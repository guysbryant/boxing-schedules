class BoxingSchedules::CLI

  def start
    puts "Hello, Welcome to The Boxing Fight Schedule Generator."
    puts "Which displayed option would you like to select(Type the number to select):"
    puts "\t 1.Fight dates."
    puts "\t 2.Fight times."
    puts "\t 3.The fighters."
    puts "\t 4.Fight location."
    puts "\t Type 'exit' to quit."

    user_input = gets.strip.downcase
    case user_input
    when '1'
      # get fight dates, display them to the user.
      "fight dates"
      url = "https://box.live/upcoming-fights-schedule/"
      BoxingSchedules::Scraper.scrape_scheduled_fights(url)
    when '2'
      # get fight times, display them to the user.
      "fight times"
    when '3'
      # get fighter names, display them to the user.
      "fighter names"
    when '4'
      # get fight location/arena, display it to the user.
      "fight location"
    when 'exit'
      "Goodbye!"
    else
      start
    end
  end
end
