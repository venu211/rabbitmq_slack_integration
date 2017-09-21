$environment = ARGV[0]  #dev/uat
load "./load_config.rb"
require "./rabbitmq_init"
require "./slack_notifier"


class SlackQ_Listener < RabbitMQ_Init
  
  include Slack

	def start
	  @connection.start
	  channel = @connection.create_channel
	  queue = channel.queue($CONFIG["queues"][:slack], durable: true)

	    begin
	      queue.subscribe(:manual_ack => false, :block => true) do |delivery_info, properties, body|
	  	    
	  	      send_message_to_slack(properties[:headers]["channel_name"], body.to_s)
	
	      end
	    rescue Interrupt => _
	      @connection.close
	    end	
	end
end


SlackQ_Listener.new.start