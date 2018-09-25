require 'pry'

class Artist

  attr_accessor :name, :songs, :genres

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @genres = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song.artist = self
    @songs << song
    @genres << genre
    # why do we need to return song?
    # so the test can check song.artist 
    song
  end

end
