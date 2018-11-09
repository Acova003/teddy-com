require 'rubygems'
require 'twilio-ruby'

# Your Account Sid and Auth Token from twilio.com/console
@client = Twilio::REST::Client.new(account_sid, auth_token)

message = @client.messages.create(
                             from: '+15103451027 ',
                             body: 'Greetings! This is Twilio.',
                             to: '+15105709666'
                           )

puts message.sid
