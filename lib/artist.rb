require 'pry'
class Artist
  attr_accessor :name

   @@all = []

    def initialize(name) # artist has many genres through its songs
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def songs
      Song.all.select do |song|
        if song = song.artist # if the song belongs to the artist
          song # return the song
          end
        end
      end

      #
      # - The `Artist` class needs a class variable `@@all` that begins as an empty array
      # - The `Artist` class needs a class method `.all` that lists each artist in the
      #   class variable
      # - An artist is initialized with a name and is saved in the `@@all` array.
      # - The `Artist` class needs an instance method, `#new_song`, that takes in an
      #   argument of a name and genre creates a new song. That song should know that it
      #   belongs to the artist.
      # - The `Artist` class needs an instance method, `#songs`, that iterates through all
      #   songs and finds the songs that belong to that artist. Try using `select` to
      #   achieve this.
      # - The `Artist` class needs an instance method, `#genres` that iterates over that
      #   artist's songs and collects the genre of each song.


      # iterates through all songs and finds the songs that belong
      # to that artist. Try using `select` to achieve this.

   def genres
  self.select do |song|
       binding.pry
       # binding.pry  #song.genre => #<Genre:0x00007f8000bac1d8 @name="rap">
        song.genre
           # binding.pry
     end
     # class needs an instance method, `#genres` that iterates over that
     #   artist's songs and collects the genre of each song.
   end

    def new_song(name, genre) # Follow the song initialize order
        song =   Song.new(name, self, genre)
        song
      # given a name and genre, creates a new song
      # associated with that artist
    # binding.pry
  end



end
