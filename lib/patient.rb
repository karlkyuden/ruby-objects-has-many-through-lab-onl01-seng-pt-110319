
class Patient
  
  attr_accessor :name
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end

  def new_appointment(doctor, date)
    Appointment.new(date, self, doctor)
  end
  
  def appointments
    Appointment.all.select do |appointments|
      appointments.patients == self
    end
  end
  
  def doctors
    Appointments.collect do |appointments|
      appointments.doctor
    end
  end

end