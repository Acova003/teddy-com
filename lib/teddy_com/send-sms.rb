require 'twilio-ruby'
class TeddyCom::SendSMS
  def initialize
    @client = Twilio::REST::Client.new(
      ENV['TWILIO_ACCOUNT_SID'],
      ENV['TWILIO_AUTH_TOKEN']
    )
  end

  def send(numbers, message)
    numbers.each do |num|
      @client.messages.create(
        from: ENV['TWILIO_PHONE_NUMBER'],
        to: num,
        body: message
      )
    end
  end
end
