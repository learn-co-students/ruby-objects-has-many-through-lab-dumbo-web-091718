require 'pry'
class Song
  attr_accessor :name, :genre, :artist

  @@all =[]
  def initialize(name, artist, genre)
    @artist = artist
    @genre = genre
    @name = name
    @@all <<self
    # binding.pry
    # puts"done"
  end
  def self.all
    @@all
  end



end
