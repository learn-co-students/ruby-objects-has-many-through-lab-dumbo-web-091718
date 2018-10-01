class Genre
  attr_accessor :name, :song, :artist
  @@all = []

  def initialize(name)
    @name = name
    @@all<<self
  end
  def songs
    Song.all
  end
  
  def artists
    Artist.all
  end

  def self.all
    @@all
  end




end
