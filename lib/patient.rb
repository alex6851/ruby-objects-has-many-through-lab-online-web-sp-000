class Patient
  
  attr_accessor :name

  @@all = []


  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
    Appointments.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    appointments.map do |appointment|
      appointment.doctor
    end
  end

  def self.all
    @@all
  end

end
