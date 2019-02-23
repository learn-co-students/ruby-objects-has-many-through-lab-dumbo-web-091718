class Patient
  attr_reader :name
  attr_accessor :appointments
  
  @@all = []
  
  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def new_appointment(doctor, date)
    new_app = Appointment.new(doctor, self, date)
    @appointments << new_app
    new_app
  end
  
  def doctors
    @appointments.map {|app| app.doctor}
  end
end
