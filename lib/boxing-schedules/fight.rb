class BoxingSchedules::Fight
  attr_accessor :fight_details, :fighter_names, :channel_location, :fight_time, :fight_url

  @@all = []

  def save
    @@all << self
  end

  def self.all
    @@all
  end
end
