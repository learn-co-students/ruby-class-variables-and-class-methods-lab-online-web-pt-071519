class Song

  ARTISTS = []
  GENRES = []
  @@count = 0

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    ARTISTS << artist
  end

  def self.count
    @@count
  end

  def self.artist
    ARTISTS.uniq
  end

end
