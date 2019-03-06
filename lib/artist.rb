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
  end 
  def songs 
    Song.all.select do |song|
      song.artist == self 
    end 
  end 
  def genres 
    Song.all.select to |song|
    binding.pry
  end 
  end 
end