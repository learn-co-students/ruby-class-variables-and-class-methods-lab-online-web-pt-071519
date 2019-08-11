class Song 
  
attr_accessor :name , :artist , :genre
@@count = 0 
@@genres = []
@@artists = []
def initialize(name, artist, genre)
  
  @@count += 1
  @@genres << genre
  @@artists << artist
  
end

def self.count
  @@count
end  

def self.genres 
  @@genres
end
  
def artists
  @@artists 
  
end 

def genre_count
  @@g_count = Hash.new 
  @@genres.each do |g|
    @@g_count[g] = 
end  

end

