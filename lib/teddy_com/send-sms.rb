class TeddyCom::SendSMS
  require secrets.txt
  bundler.require()
  @client = Twilio::REST::Client.new(account_sid, auth_token)
