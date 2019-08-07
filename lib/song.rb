class Song

  ARTISTS = []
  GENRES = []
  @@genres = []
  @@count = 0

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << self
    ARTISTS << self
  end

  def self.count
    @@count
  end

  def self.artist
    ARTISTS.uniq
  end

  def self.genres
    genres.uniq
  end

end
