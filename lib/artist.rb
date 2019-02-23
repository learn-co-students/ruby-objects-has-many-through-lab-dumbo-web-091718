require "pry"

class Artist
  attr_reader :name
  attr_accessor :songs
  
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_song(name, genre)
    song = Song.new(name, self, genre)
    @songs << song
    song
  end
  
  def genres
    genres = self.songs.map do |song|
      song.genre
    end
    genres
  end
end
