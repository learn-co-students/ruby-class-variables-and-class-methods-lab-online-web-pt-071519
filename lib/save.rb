class Song
  @@artists = []
  @@genres = []
  @@count = 0
  def initialize(name, artist, genre)
    @@genres << genre
    @name = name
    @genre = genre
    @artist = artist
    @@artists << @artist
    @@count += 1
  end
  attr_accessor :artist, :genre
  def name
    @name
  end
  def genre
    @@genres
  end

end
