# rabbitmq_slack_integration

This Tool gives us the ability to send a message to slack channel by simply publishing a message to RabbitMQ queue 
from your code and provides more visibility of notifications.

How to Publish:
Step 1: Make sure the channel is created on slack to where you want to send the message. 
        The slack Webhook is on my credentials so make sure you add me(Venumadhav Dondapati)to the channel if it is private.
Step 2: Set headers info in your publishing code.
Step 3: Publish your message to Queue.

Queue name: slack_RMQ
Headers Info --> Key:channel_name Value: "Your slack channel name"
                 Example: channel_name = "Test001"
