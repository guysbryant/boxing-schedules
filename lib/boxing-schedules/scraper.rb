class BoxingSchedules::Scraper
  # scrape site: https://schedule.boxingscene.com/ or https://box.live/upcoming-fights-schedule/
  # scheduled fight locations selector: page.css("p.fight-channels").text.gsub("\n", " ")

  def self.scrape_scheduled_fights
    url = "https://schedule.boxingscene.com/"
    page = Nokogiri::HTML(open(url))
    fights_schedules_location = page.css("p.fight-channels").text.gsub("\n", " ")
    fights_schedules_location.split.each do |fight|
      puts fight
    end
    # open url and scrape all scheduled fights.
  end

end
