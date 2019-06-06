class Genre
    attr_accessor :name
    attr_accessor :songs
    attr_accessor :artists

    @@all = []

    def initialize(name)
        @name = name
        @songs = []
        @artists = []
        @@all << self
    end

    def add_artist(artist)
        if not @artists.include?(artist)
            @artists << artist
        end
    end

    def self.all
        @@all
    end
end