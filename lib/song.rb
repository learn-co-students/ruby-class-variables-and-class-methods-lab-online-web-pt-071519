require 'pry'

class Song
  
  attr_accessor :name, :artist, :genre
  
  @@count = 0
  @@genre_count = {}
  @@genres = []
  @@artists = []
  
  
  def initialize(name, artist, genre)
    @@genre = genre
    @@artist = artist
    @@name = name
    @@count += 1
    @@genres << genre
    @@artists << artist
  end
  
  def name
    @@name
  end
  
  def artist
    @@artist
  end
  
  def genre
    @@genre
  end
  
  def genres
    @@genres.uniq!
  end
  
  def artists
    @@artists.uniq!
  end
  
  def self.count
    @@count
  end  
  
  def self.artists
    @@artists.uniq!
  end
  
  def self.genres
    @@genres.uniq!
  end
    
  
  def self.genre_count
    self.genres.each do |genres, count| 
      if !@@genre_count[genres].eql? genres
binding.pry      
        @@genre_count[genres] = genres
        @@genre_count[genres] << 1
      else
        @@genre_count[genres] += 1 
      end
    end
        @@genre_count

        
      # @@genre_count = genres
      # @@genre_count[genres] = @@count
    # end

          # if @@genre_count[:genres] != genres
      #   @@genre_count[genres] = genres
      #   @@genre_count[genres] = [count]
      #   @@genre_count[:genres] = [count += 1]
      # else
      #   @@genre_count[:genres] = [count += 1]
      # end
      
  end
  
  def self.artist_count
    @@artist_count
  end
    
    
end