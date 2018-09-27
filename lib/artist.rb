require 'pry'
class Artist
  attr_accessor :name, :songs, :genres

  @@my_storage = []

   def initialize(name)
      @@my_storage << self
      @name = name
      @songs = []
      @genres = []
  end

  def self.all
     @@my_storage
  end

  def new_song(name, genre)
    new_song = Song.new(name, self, genre)
    songs << new_song
    genres << genre
    return new_song
  end
 end

  #   def new_song(name, genre) # Follow the song initialize order
  #       song =   Song.new(name, self, genre)
  #       song
  #     # given a name and genre, creates a new song
  #     # associated with that artist
  #   # binding.pry
  #  end
