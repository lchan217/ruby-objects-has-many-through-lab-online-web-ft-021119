require "pry"
class Genre 
  attr_accessor :name 
  @@all = []
  
  def initialize(name)
    @name = name 
    @@all << self 
  end 
  def self.all 
    @@all 
  end 
  def songs 
    Song.all.each do |song|
      song.genre == self 
    end 
  end 
  def artists 
    Song.all.each do |song|
      song.artist == genre.artist 
  end 
end 