class Song 
attr_accessor :name,:artist, :genre

 def initialize (name,artist,genre)
   @name = name
    @artist = artist
    @genre = genre
    @@genres << genre
    @@artists << artist
    @@count += 1
 end
  @@count = 0
  @@genres = []
  def self.count 
    @@count
  end 
  
   def self.genres
    @@genres.uniq
  end
  def self.genre_count
    genre_count = {}
    @@genres.each do |genre|
      if genre_count[genre]
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
    @@artists = []
  
  def self.artist_count
    @@artists.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
  end
  
  def self.artists
    @@artists.uniq
  end
end