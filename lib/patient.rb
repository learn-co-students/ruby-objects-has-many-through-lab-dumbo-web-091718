class Patient
  attr_accessor :name, :appointments, :doctors
  
  @@all = []

  def initialize(name)
    @appointments = []
    @doctors = []
    @name = name 
    @@all << self
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(self, doctor, date)
    @appointments << appointment
    # @doctors << appointment 
    @doctors << appointment.doctor
    appointment
  end

  def self.all
    @@all
  end
end