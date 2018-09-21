class Patient

  attr_accessor :name, :doctor, :date, :appointments

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
  end

  def appointments
    appointments = Appointment.all.select {|x| x.patient == self}
  end

  def self.all
    @@all
  end

  def doctors
    doctors = Appointment.all.select {|appointment| appointment.patient == self}
    return doctors.map {|appointment| appointment.doctor}
  end
end
