require 'pry'
class Song

  attr_accessor :name, :artist, :genre

  @@artists = []
  @@genres = []
  @@count = 0

  def initialize(name, artist, genre)
      @name = name
      @artist = artist
      @genre = genre
      @@count += 1
      @@artists << artist
      @@genres << genre
  end

  def self.count
    @@count
  end

  # uniq returns a new array by removing duplicate values in self.
  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    counter = {}
    @@genres.each do |genre|
      if counter[genre]
        counter[genre] += 1
      else
        counter[genre] = 1 #!this line is truthy first time through the loop
      end
    end
  counter
  end


  def self.artist_count
    counter = {}
    @@artists.each do |artist|
      if counter[artist]
        counter[artist] += 1
      else
        counter[artist] = 1 #!this line is truthy first time through the loop
      end
    end
  counter
  end


end