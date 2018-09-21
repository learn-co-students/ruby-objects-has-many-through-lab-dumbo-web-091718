class Artist

  attr_accessor :name, :songs, :genres

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    song.name = name
    song.genre = genre
    song.artist = self
    @songs << song
    song
  end

  def genres
    genres = Song.all.select {|x| x.artist == self}
    return genres.map {|x| x.genre}
  end
end
