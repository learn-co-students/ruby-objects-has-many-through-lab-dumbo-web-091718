require "pry"
class Doctor
  attr_accessor :name, :appointments, :patients

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select {|x| x.doctor == self}
  end

  def patients
    patients = Appointment.all.select {|x| x.doctor == self}
    return patients.map {|x| x.patient}
  end
  
  def self.all
    @@all
  end
end
