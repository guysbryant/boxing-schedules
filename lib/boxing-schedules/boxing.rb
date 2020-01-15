class BoxingSchedules::Boxing
  attr_accessor :fight_details, :fighter_name, :fight_location, :fight_channel, :fight_time, :fight_url

  @@all = []

  def initialize
  end

  def self.fight
    fight = self.new 
  end
end
