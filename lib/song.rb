require 'pry'

class Song
  attr_accessor :name, :genre, :artist

  @@all = []

  def initialize(name, artist, genre)
    @artist = artist
    @genre = genre
    @name = name
    @@all << self
  end

  def genre
    genre = Genre.new(genre)
  end

  def artist
    artist = Artist.new(artist)
  end


  def self.all
    @@all
  end

end
