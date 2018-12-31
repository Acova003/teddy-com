class TeddyCom::CLI
  def start
    welcome_banner
    menu
  end

  def welcome_banner
    puts ""
    puts ""
    puts "Welcome to the Lambda Sigma Gamma Sorority Inc. Event Communications System"
    puts "____________________________________________________________________________"
    puts ""
    puts ""
  end

  def menu

    puts "What message would you like to send to attendees?"
    puts "> "
    user_message
  end

  def user_message
    user_input = gets.chomp
    if user_input.length != 0
      numbers = GoogleSheetsInfo.new.get_numbers
      sms = TeddyCom::SendSMS.new
      sms.send(numbers, user_input)
    else
      puts "Invalid input. Please enter a message".red
      menu
    end
  end
end
