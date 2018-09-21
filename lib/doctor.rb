class Doctor

  attr_accessor :name, :patients, :appointments

  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(patient, date)
    appointment = Appointment.new(date, patient, self)
  end

  def appointments
    Appointment.all.select {|x| x.doctor == self}
  end

  def patients
    patients = Appointment.all.select {|x| x.doctor == self}
    return patients.map {|x| x.patient}
  end


end
