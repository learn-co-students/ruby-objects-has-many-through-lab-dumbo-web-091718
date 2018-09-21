class Genre
  attr_accessor :name, :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def songs
    Song.all
  end

  def self.all
    @@all
  end

  def artists
    @artist = Song.all.map do |song|
      song.artist
    end
    return @artist
  end
end
