# rabbitmq_slack_integration

This Tool gives us the ability to send a message to slack channel by simply publishing a message to RabbitMQ queue 
from your code and provides more visibility of notifications.

How to Publish:<br/>
Step 1: Make sure the channel is created on slack to where you want to send the message<br/> 
The slack Webhook is on my credentials so make sure you add me(Venumadhav Dondapati)to the channel if it is private
Step 2: Set headers info in your publisher code<br/>
Step 3: Publish your message to Queue<br/>

Queue name: slack_RMQ<br/>
Headers Info --> Key:channel_name Value: "Your slack channel name"<br/>
                 Example: channel_name = "Test001"

References: 
https://api.slack.com/docs/message-formatting#linking_to_channels_and_users
