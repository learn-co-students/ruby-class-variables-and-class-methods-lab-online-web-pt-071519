class Song 
  attr_accessor :name, :artist, :genre
  
  @@count = 0 
  @@genres = []
  @@artists = []
  def initialize(name, artist, genre)
    @@count +=1 
    @name = name
    @@artists << @artist = artist
    @@genres << @genre = genre 
  end   
  
  def self.count
    @@count
  end 
    
  def self.genres
    @@genres.uniq
  end
  
  def self.artists
    @@artists.uniq
  end 
  
  def self.genre_count
    genre_hash = {}
    @@genres.uniq.each { |g| genre_hash[g] = @@genres.count{ |i| i == g}}
    genre_hash
  end  
  
  def self.artist_count
    artist_hash = {}
    @@artists.uniq.each { |a| artist_hash[a] = @@artists.count{ |i| i == a}}
    artist_hash
  end  
  
end   