require 'twilio-ruby'
require 'pry'
#binding.pry
  # Your Account Sid and Auth Token from twilio.com/console
  require('dotenv').config();
  console.log('Your environment variable TWILIO_ACCOUNT_SID has the value: ', process.env.TWILIO_ACCOUNT_SID);

client = Twilio::REST::Client.new(
  ENV['TWILIO_ACCOUNT_SID'],
  ENV['TWILIO_AUTH_TOKEN']
)
client.messages.create(
  from: ENV['TWILIO_PHONE_NUMBER'],
  to: ENV['CELL_PHONE_NUMBER'],
  body: 'Greetings! This is Twilio.'
  )
