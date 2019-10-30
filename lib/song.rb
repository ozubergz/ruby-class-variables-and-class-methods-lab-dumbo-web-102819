require "pry"
class Song
  attr_accessor :artist, :name, :genre
  
  @@count = 0
  @@artists = []
  @@genres = []
  
  def initialize(name, artist, genre)
    @artist = artist
    @name = name
    @genre = genre
    
    @@count += 1
    @@artists << artist
    @@genres << genre
  end
  
  def self.count
    @@count
  end
  
  def self.genres
    @@genres.select.with_index do |artist, idx|
      @@genres.index(artist) == idx
    end
  end
  
  def self.artists
    @@artists.select.with_index do |artist, idx|
      @@artists.index(artist) == idx
    end
  end
  
  def self.genre_count
    hash = {}
    @@genres.each do |genre|
      if(!hash[genre])
        hash[genre] = 1
      else
        hash[genre] += 1
      end
    end
    hash
  end
  
  def self.artist_count
    hash = {}
    @@artists.each do |artist|
      if(!hash[artist])
        hash[artist] = 1
      else
        hash[artist] += 1
      end
    end
    hash
  end
  
end



