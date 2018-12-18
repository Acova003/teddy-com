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
    puts "1. SMS all event attendees"
    puts "2. Contact a member"
    puts "3. Contact chapter"
    puts "4. Late attendance alert"
    puts ""
    puts "Please choice an option (1-4)"
    user_choice
  end

  def user_choice
    user_input = gets.strip.to_i

    if user_input.between?(1,4)
      case user_input
      when 1
        puts "Messaging all attendees"
        #recipients = all
      when 2
        puts "What member would you like to contact?"
      when 3
        puts "What chapter would you like to contact?"
      when 4
        puts "You have been marked as tardy. Please check-in at registration desk."
      end
    else
      puts "Invalid input. Please choose a number (1-4)".red
      menu
    end
  end
end
