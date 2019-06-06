class Song
    attr_accessor :name
    attr_accessor :artist
    attr_accessor :genre

    @@all = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @genre.songs << self
        @genre.add_artist(artist)
        @@all << self
    end

    def self.all
        @@all
    end

end