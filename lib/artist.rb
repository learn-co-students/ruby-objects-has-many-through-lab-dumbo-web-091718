require 'pry'

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    # binding.pry
  end

  def songs
    Song.all.select do |title|
      title.artist == self
    end
  end

  def genres
    Song.all.map do |title|
      title.genre
    end
  end

end
