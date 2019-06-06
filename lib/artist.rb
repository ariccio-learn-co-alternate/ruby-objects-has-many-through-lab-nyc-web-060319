require "pry"

class Artist
    attr_accessor :name
    attr_accessor :songs
    attr_accessor :genres

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @genres = []
        @@all << self
    end

    def self.all
        @@all
    end

    def new_song(name, genre)
        a_song = Song.new(name, self, genre)
        #binding.pry
        @songs << a_song
        @genres << genre
        a_song
    end

end