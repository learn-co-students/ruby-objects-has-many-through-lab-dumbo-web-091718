class Artist
  attr_accessor :name, :genre, :song

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end

  def new_song(song, genre)
    new_song = Song.new(song, self, genre)
    @songs << new_song
    return new_song
  end

  def songs
    @songs
  end

  def genres
    @genre = @songs.map do |song|
      song.genre
    end
    return @genre
  end
end
