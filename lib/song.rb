require 'pry'

class Song 
    attr_accessor :artist, :name, :genre
    @@count = 0 
    @@genres = []
    @@artists = []
    @@genre_count = {}

    def initialize(name,artist,genre)
        @@count += 1 
        @name = name
        @artist = artist
        @genre = genre
        @@genres.push(genre)
        @@artists.push(artist)
    end 

    def self.count
        @@count
    end

    def self.genres
        @@genres
    end 
    
    
    def self.artists
        new_artist = []
        @@artists.each do |artist|
            if !new_artist.include?(artist)
                new_artist.push(artist)
            end
        end 
        new_artist
    end 

    def self.genres
        new_genre = []
        @@genres.each do |genre|
            if !new_genre.include?(genre)
                new_genre.push(genre)
            end
        end 
        new_genre
    end

    def self.genre_count
        genre_count = {}
        @@genres.each do |genre|
            if !genre_count.include?(genre)
                genre_count[genre] = 1
            else
                genre_count[genre] += 1
            end 
        end 
        genre_count
    end 

    def self.artist_count
        artist_count = {}
        @@artists.each do |artist|
            if !artist_count.include?(artist)
                artist_count[artist] = 1
            else
                artist_count[artist] += 1
            end 
        end 
        artist_count
    end
end 