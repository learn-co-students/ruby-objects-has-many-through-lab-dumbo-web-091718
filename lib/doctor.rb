require 'pry'
class Doctor

  attr_accessor :name, :date

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def new_appointment(name, date)
    patient_new = Doctor.new
    patient_new.name = name
    patient_new.date = date
    binding.pry
    patient_new
  end

  def patients

  end

end
