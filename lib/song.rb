require "pry"
class Song

    @@count = 0
    @@artists = []
    @@genres = []

    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists <<artist
        @@genres  <<genre
    end

    def self.count
        @@count
    end

    def self.artists
        @@artists.uniq
    end

    def self.genres
        @@genres.uniq
    end

    def self.genre_count
        genre_count = {}
        @@genres.each { |g| genre_count[g] ? genre_count[g] += 1 : genre_count[g] = 1 }
        genre_count
    end

    def self.artist_count
        artist_count = {}
        @@artists.each { |a| artist_count[a] ? artist_count[a] +=1 : artist_count[a] = 1 }
        artist_count
    end

end