require 'pry'

class Genre
  attr_reader :name

      @@all = []
# A genre has many songs and an artist has many songs

# A genre has many artists through
# its songs.
    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end


    def songs
      Song.all.find_all do |song|
         song.genre == self # if true will return the item
                            # if false will not add to array
      end
          #call on class array of all
        # song == genre
        # self refers to an instnace of genre
        # song variable that refers to instance ofsong
        # return song
  end


  def artists
     artist = Song.all.select do |song|
      song.genre == self
     end

     artist.map do | song|
       song.artist
     end
     # song_by_genre.map do |song|
     #  song.artist
     # end
     # # binding.pry
 
end
# binding.pry

#     # Genre
#   #name
#     has a name (FAILED - 8)
#   #songs
#     has many songs (FAILED - 9)
#   # .all
#     # knows about all genre instances (FAILED - 10)
#   #artists
#     has many artists, through songs (FAILED - 11)
#
end
