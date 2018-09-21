class Artist

attr_accessor :name

@@all=[]

def initialize(name)
  @name=name
  @songs=[]
  @@all<<self
end

def songs
  @songs
end

def new_song(name, genre)
    song = Song.new(name, self, genre)
    # song.genre = genre
    # song.artist = self
    song
  end

def self.all
  @@all
end

def genres
  self.songs.collect do |song|
    song.genre
  end
end

def songs
    Song.all.select {|song| song.artist == self}
  end
end
