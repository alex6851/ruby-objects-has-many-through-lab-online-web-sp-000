require 'pry'

class Doctor

  attr_accessor :name

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end

  def genres
    songs.map do |song|
      song.genre
    end
  end

  def self.all
    @@all
  end

end
