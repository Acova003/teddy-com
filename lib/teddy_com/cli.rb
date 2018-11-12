class TeddyCom::CLI

  OFFICERS = {1 => "Presidents", 2 => "Vice Presidents", 3 => "Sergeant at Arms", 4 => "Representatives",
    5 => "Secretaries", 6 => "Treasurers", 7 => "Historians", 8 => "Commissioners of Scholarship",
  9 => "Commissioners of Philanthropy", 10 => "Commissioners of Alumnae Relations", 11 => "Commissioners of Fundraising",
  12 => "Commissioners of Recruitment", 13 => "Commissioners of Expansion", 14 => "Commissioners of Publicity",
  15 => "Commissioners of Multiculturalism"}

  def start
    welcome_banner
    menu
  end

  def welcome_banner
    puts ""
    puts ""
    puts "    Welcome to TeddyCom, the" + " Lambda ".green + "Sigma " + "Gamma ".red + "communications system"
    puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
    puts ""
    puts ""
    sleep(2)
  end

  def menu
    puts "Which chapter officers would you like to contact? Please type a value (1-15) or 'ALL' for all members."
    puts ""
    OFFICERS.each do |k, v|
      puts "#{k}. " + "#{v}"
    end
    input
  end
  def input
    puts ">"
    user_input = gets.strip.to_i

    if user_input.between?(1,15)
      #TeddyCom::SendSMS
      write_message
    elsif user_input == 'all'.upcase

    else
      puts "Invalid input. Please choose a number (1-15) or 'All'".red
      input
    end
    continue?
  end

  def continue?
    puts ""
    puts "Would you like to send another message? (Y/N)"
    @user_input = gets.chomp.upcase
    if @user_input == 'Y'
      menu
    elsif @user_input == 'N'
      goodbye
    else
      puts ""
      puts "Invalid input".red
      continue?
    end
  end

  def write_message
    puts "What message would you like to send?"
    ">"
    message = gets.chomp
    puts "-Type:"
    puts "1. To send the message"
    puts "2. To type message again"
    puts "3. To start over"
    confirmation = gets.chomp
    case confirmation
    when "1"
      #if role_id == user_input, select phone number
      #iterate through phone number and create a message for each
      #TeddyCom::Message.sender == "+15103451027"
      #TeddyCom::Message.recipient ==
      #TeddyCom::Message.text == message
      puts "Hello"
      #TeddyCom::Message.new(+15103451027, )
    when "2"
      puts "goodbye"
      #TeddyCom::Message
    end
  end

  def goodbye
    puts "Goodbye, thank you for using TeddyCOM"
  end
end
