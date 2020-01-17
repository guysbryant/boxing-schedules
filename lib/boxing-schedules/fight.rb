class BoxingSchedules::Fight
  attr_accessor :fight_details, :fighter_name, :fight_location, :fight_channel, :fight_time, :fight_url

  @@all = []

  def initialize
  end
  
  def save 
    @@all << self 
  end 

  def self.all 
    @@all 
  end 
end
