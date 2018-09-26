class Doctor

  attr_accessor :name, :patient, :appointment, :date

   @@all = []
   @@appointments = []
    def initialize(name)
      @name = name
      @@all << self
      @@appointments << appointment
    end

    def self.all
      @@all
    end

    def new_appointment(patient, date)
   #   given a date and a patient, creates a new appointm
    end

    def appointments
      @@appointments
    end

    def patients
      #many patients, through appointments
    end

end
