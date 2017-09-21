
class RabbitMQ_Init

	def initialize
	  @connection = Bunny.new($CONFIG["rabbitmq_auth"])
	end
	
end	