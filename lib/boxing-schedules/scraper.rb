# This class scrapes scheduled upcoming fights

class BoxingSchedules::Scraper
  # scrape site: https://schedule.boxingscene.com/ or https://box.live/upcoming-fights-schedule/
  # scheduled fight channels/locations selector: page.css("p.fight-channels").text.gsub("\n", " ")
  # scheduled fight events selector: page.css("div.schedules a").map{|link| link["href"]}.join(" ").strip
  # fighter names selector: page.css(".fighter-name").text

  def self.scrape_scheduled_fights
    url = "https://schedule.boxingscene.com/"
    page = Nokogiri::HTML(open(url))
    fight_schedules_events = page.css("div.schedules a").map{|link| link["href"]}.join(" ").strip
    fighter_names = page.css(".fighter-name").text.split.each do |name|
      puts name
    end
    fight_channels_locations = page.css("p.fight-channels").text.gsub("\n", " ").split.each do |fight|
      puts fight
    end
    # open url and scrape all scheduled fights.
  end

end
