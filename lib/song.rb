class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@genres = []
  @@artists = []

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

  def self.genres
    @@genres.uniq {|genre| genre}
  end

  def self.artists
    @@artists.uniq {|artist| artist}
  end

  def self.genre_count
    genre_hash = {}
    @@genres.each do |genre|
      if !genre_hash.key?(genre)
        genre_hash[genre] = 1
      else
        genre_hash[genre] += 1
      end
      genre_hash
    end
  end

  def self.artist_count
  end

end
