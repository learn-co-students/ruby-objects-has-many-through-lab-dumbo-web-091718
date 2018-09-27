require 'pry'

class Doctor

  attr_accessor :name

   @@all = []

    def initialize(name)
      @name = name
      @@all << self
    end

    def self.all
      @@all
    end

    def new_appointment(patient, date)
  		 Appointment.new(patient, self, date)
   #  `Patient`  and a date,
    end

    def appointments
      Appointment.all.select do |appointment|
        appointment.doctor == self
      end
    end

    def patients
       #itterates over doc's appts and collects
       #the patient that belongs to eachappointment.
      appointments.map do |appt|
        appt.patient
      end
    end

end
