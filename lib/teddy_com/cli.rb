class TeddyCom::CLI
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
  end

  def menu
    puts "Which chapter officers would you like to contact? Please type a value (1-15) or 'ALL' for all members."
    puts ""
    puts "1.  President"
    puts "2.  Vice President"
    puts "3.  Sergeant at Arms"
    puts "4.  Representative"
    puts "5.  Secretary"
    puts "6.  Treasurer"
    puts "7.  Historian"
    puts "8.  Commissioner of Scholarship"
    puts "9.  Commissioner of Philanthropy"
    puts "10. Commissioner of Alumnae Relations"
    puts "11. Commissioner of Fundraising"
    puts "12. Commissioner of Recruitment"
    puts "13. Commissioner of Expansion"
    puts "14. Commissioner of Publicity"
    puts "15. Commissioner of Multiculturalism"
    puts ""
    puts '>'
    user_input = gets.strip.to_i

    if user_input.between?(1,15) || user_input == 'all'.upcase
      TeddyCom::SendSMS
    else
      puts "Invalid input. Please choose a number (1-15) or 'All'".red
      input
    end
    continue?
  end

  def continue?
    puts ""
    puts "Would you like to send another message? (Y/N)"
    user_input = gets.chomp.upcase
    if user_input == 'Y'
      menu
    elsif user_input == 'N'
      goodbye
    else
      puts ""
      puts "Invalid input".red
      continue?
    end
  end

  def goodbye
    puts "Goodbye, thank you for using TeddyCOM"
  end
end
