require 'pry'

class Artist
  attr_accessor :name

   @@all = []

   # artist has many genres through its songs

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def self.songs
      @@songs
    end

    def songs
      @@songs.select do |artist|
        if artist == artist
          return artist.song
        else
          return nil
        end
      end

      # iterates through all songs and finds the songs that belong
      # to that artist. Try using `select` to achieve this.
    end

   def genres
     songs.collect do |song|
       if song == artist.song
         return song.genre
       else
         return nil
       end
     end
     # class needs an instance method, `#genres` that iterates over that
     #   artist's songs and collects the genre of each song.
   end

    def new_song # Follow the song initialize order
      song = Song.new(name, genre)
      song
      # given a name and genre, creates a new song
      # associated with that artist
    end
    # binding.pry



end
