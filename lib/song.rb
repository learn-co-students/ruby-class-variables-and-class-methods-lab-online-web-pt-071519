class Song

  @@artists = []
  @@genres = []
  @@count = 0

  attr_accessor :name, :artist, :genre

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre

    @@count += 1
    @@genres << genre
    @@artists << artist
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
    @@genres.group_by{|x| x}.map{|k, v| [k, v.length]}.to_h
  end

  def self.artist_count
    @@artists.group_by{|x| x}.map{|k, v| [k, v.length]}.to_h
  end

end
