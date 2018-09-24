class Genre
  require 'pry'
  attr_reader :name
  @@all = []
  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|song| song.genre == self}
  end

  def artists
    song_makers = []
    self.songs.each do |song|
      song_makers << song.artist
    end
    song_makers
  end
end
