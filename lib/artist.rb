require 'pry'

class Artist

  attr_accessor :name, :genres

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def genres
    binding.pry
    songs.map do |song|
      song.genre
    end
  end

  def self.all
    @@all
  end

end
