require "pry"
class Artist 
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  def self.all 
    @@all 
  end
  def new_song(name, genre)
    new = Song.new(name, self, genre)
    Song.all << new 
  end 
end