require 'pry'
class Artist

  attr_accessor :name, :genre, :song

  @@all = []
  def initialize(name)
    @name = name
    @@all<<self
  end
  def self.all
    @@all
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
     Genre.all
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    # binding.pry
    # puts "done."
  end



end
