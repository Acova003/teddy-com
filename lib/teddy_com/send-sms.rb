class TeddyCom::CLI
  require 'twilio-ruby'

  client = Twilio::REST::Client.new(
    ENV['TWILIO_ACCOUNT_SID'],
    ENV['TWILIO_AUTH_TOKEN']
  )

  client.messages.create(
    from: "[twilio_phone]",
    to: "[test_phone]",
    body: "You just sent an SMS from Ruby!"
  )
end
