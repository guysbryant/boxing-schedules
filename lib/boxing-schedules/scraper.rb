class BoxingSchedules::Scraper
  # scrape site: https://box.live/upcoming-fights-schedule/
  def self.scrape_scheduled_fights(url)
    url = "https://box.live/upcoming-fights-schedule/"
    page = Nokogiri::HTML(open(url))
    puts "in the scraper class."
    # open url and scrape all scheduled fights.
  end

end
