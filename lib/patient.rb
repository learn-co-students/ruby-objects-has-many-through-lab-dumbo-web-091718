class Patient
attr_reader :appointment
attr_accessor  :doctor, :name
  @@all = []

  def initialize(name)
    @name = name
    @@all<<self
  end

  def self.all
    @@all
  end
  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def new_appointment(doctor, date)
    Appointment.new(self, doctor, date)
  end

  def doctors
    Doctor.all
  end



end
