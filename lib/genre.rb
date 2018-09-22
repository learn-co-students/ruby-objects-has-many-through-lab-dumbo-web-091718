require 'pry'

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
    Song.all.select do |title|
      title.genre == self
    end
  end

  def artists
    Song.all.map do |title|
      title.artist
    end
  end

end
