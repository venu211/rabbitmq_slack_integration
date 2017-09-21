module Slack

def send_message_to_slack(slack_channel, message)
  @notifier = Slack::Notifier.new $CONFIG["slack_auth"][:webhook_url] do
                  defaults channel: slack_channel,
                           username: $CONFIG["slack_auth"][:username]
              end
  @notifier.ping message         
end

end

