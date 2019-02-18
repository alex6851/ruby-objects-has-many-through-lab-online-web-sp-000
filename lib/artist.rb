require 'pry'

class Artist

  attr_accessor :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    binding.pry
    @@all << self
  end

  def new_song(name, genre)
    @genre = genre
    song = Song.new(name, self, genre)

  end

  def songs
    Song.all.select do |song|
      song.artist == self
    end
  end

  def self.all
    @@all
  end

end
