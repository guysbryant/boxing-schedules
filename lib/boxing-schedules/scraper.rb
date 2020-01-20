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
    content = page.css("div.schedules")
      i = 0
      while i < 21 do
        fight = BoxingSchedules::Fight.new
        fight.fight_time = content.css(".schedule-time-block")[i].text.split.join(" ")
        fight.save
        i += 1
      end
      # fight.channel_location = content.css("p.fight-channels")
      # fight.fighter_names = content.css(".fighter-name")
      # fight.fight_details = content.css(".schedule-details-block")
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
