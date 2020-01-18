# This class scrapes scheduled upcoming fights
class BoxingSchedules::Scraper
  # scrape site: https://schedule.boxingscene.com/ or https://box.live/upcoming-fights-schedule/
  # scheduled fight channels/locations selector: page.css("p.fight-channels").text.gsub("\n", " ")
  # scheduled fight events selector: page.css("div.schedules a").map{|link| link["href"]}.join(" ").strip
  # scheduled fight times selector: page.css(".schedule-time-block").text.gsub("\n", "").split.each
  # fighter names selector: page.css(".fighter-name").text
  # scheduled fight event details: page.css(".schedule-details-block").text.gsub("\n", "").split.each

  def self.scrape_scheduled_fights
    url = "https://schedule.boxingscene.com/"
    page = Nokogiri::HTML(open(url))
    boxing_sechedule_content = page.css("div.schedules").each do |fight|
    end
  end

  def self.scrape_fight_channels_locations
    url = "https://schedule.boxingscene.com/"
    page = Nokogiri::HTML(open(url))
    fight = BoxingSchedules::Fight.new
    fight.channel_location = page.css("p.fight-channels").text.gsub("\n", " ").split.each do |fight|
      puts fight
    end
  end

  def self.scrape_fighter_names
    url = "https://schedule.boxingscene.com/"
    page = Nokogiri::HTML(open(url))
    fight = BoxingSchedules::Fight.new
    fight.fighter_names = page.css(".fighter-name").text.split.each do |name|
      puts name
    end
  end

  def self.scrape_fight_times
    url = "https://schedule.boxingscene.com/"
    page = Nokogiri::HTML(open(url))
    fight = BoxingSchedules::Fight.new
    fight.fight_time = page.css(".schedule-time-block").text.gsub("\n", "").split.each do |time|
      puts time
    end
  end

  def self.scrape_fight_details
    url = "https://schedule.boxingscene.com/"
    page = Nokogiri::HTML(open(url))
    fight = BoxingSchedules::Fight.new
    fight.fight_details = page.css(".schedule-details-block").text.gsub("\n", "").split.each do |details|
      puts details
    end
  end

end
