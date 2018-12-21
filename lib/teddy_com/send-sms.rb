require 'twilio-ruby'
class TeddyCom::SendSMS
  def initialize
    @client = Twilio::REST::Client.new(
      ENV['TWILIO_ACCOUNT_SID'],
      ENV['TWILIO_AUTH_TOKEN']
    )
  end

  def send
    @client.messages.create(
      from: ENV['TWILIO_PHONE_NUMBER'],
      to: ENV['TEST_NUMBER'],
      body: "You just sent an SMS from Ruby!"
    )
  end
end
