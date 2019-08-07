class Song
    @@count = 0

    def self.count 
        @@count
      end 
      
      @@genres = []
      
      
      def self.genres
        @@genres.uniq
      end
      
      
      def self.genre_count
        @@genres.inject(Hash.new(0)) { |total, i| total[i] += 1 ;total}
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
      
      def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @@artists << artist
        @genre = genre
        @@genres << genre
        @@count += 1
      end
      attr_accessor :name, :artist, :genre
    end 
    
    the_game = Song.new("The Game", "Motorhead", "Hard Rock")
    here_we_go = Song.new("Here We Go", "Jasan Radford", "Pop")
    mexican_radio = Song.new("Mexican Radio", "Wall Of Voodoo", "Pop")
    drop_dead_legs = Song.new("Drop Dead Legs", "Van Halen", "Metal")
    the_safety_dance = Song.new("The Safety Dance", "Men Without Hats", "Rock")
    
    puts the_game.name
    puts the_game.artist
    puts the_game.genre
    puts Song.count
    Song.genres
    Song.artists
    Song.genre_count
    Song.artist_count 