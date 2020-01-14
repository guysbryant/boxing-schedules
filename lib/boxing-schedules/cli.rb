class BoxingSchedules::CLI

  def main_menu
    puts "Hello, Welcome to The Boxing Fight Schedule Generator."
    puts "Which displayed option would you like to select(Type the number to select):"
    puts "1.Fight details."
    puts "2.Fight times."
    puts "3.The fighters."
    puts "4.Fight channel/location."
    puts "Type 'exit' to quit."
    puts "Type 'list' to see options again."
  end

  def start
    user_input = nil
    while user_input != 'exit'
      main_menu
      user_input = gets.strip.downcase
      case user_input
      when '1'
        # get fight dates, display them to the user.
        puts "fight details:"
        BoxingSchedules::Scraper.scrape_fight_details
      when '2'
        # get fight times, display them to the user.
        puts "fight times:"
        BoxingSchedules::Scraper.scrape_fight_times
      when '3'
        # get fighter names, display them to the user.
        puts "fighter names:"
        BoxingSchedules::Scraper.scrape_fighter_names
      when '4'
        # get fight location/arena, display it to the user.
        puts "fight channel/location:"
        BoxingSchedules::Scraper.scrape_fight_channels_locations
      when 'exit'
        puts "Goodbye!"
      else
        start
      end
    end
  end
end
