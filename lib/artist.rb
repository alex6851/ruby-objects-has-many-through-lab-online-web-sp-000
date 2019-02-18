require 'pry'

class Artist

  attr_accessor :name, :genre

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_song(name, genre)
    song = Song.new(name, self, genre)
    binding.pry

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
