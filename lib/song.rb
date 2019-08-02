class Song
  @@count = 0
  @@names = []
  @@artists = []
  @@genres = []
  
  attr_reader :name, :artist, :genre
  def initialize(name,artist,genre)
    @@names << @name= name
    @@artists << @artist = artist
    @@genres << @genre= genre
    @@count += 1
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
    genre_count = {}
    @@genres.each do |genre|
      if genre_count.include?(genre)
        genre_count[genre] += 1 
      else
        genre_count[genre] = 1
      end
    end
    genre_count
  end
  
# code below is just a variation of the code above
  def self.artist_count
    artists_count = {}
    @@artists.each do |songs|
      if artists_count[songs]
        artists_count[songs]+=1
      else
        artists_count[songs]=1
      end
    end
    artists_count
  end
  
end