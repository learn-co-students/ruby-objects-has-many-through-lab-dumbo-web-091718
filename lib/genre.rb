class Genre

  attr_accessor :name, :artist, :song

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select {|x| x.genre == self }
  end

  def artists
    artists = Song.all.select {|x| x.genre == self}
    return artists.map {|x| x.artist}
  end

end
