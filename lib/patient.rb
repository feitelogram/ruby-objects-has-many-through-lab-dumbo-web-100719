require 'pry'
class Patient

@@all = []
attr_accessor :name 

def initialize(name)
    @name = name
    @@all << self
end

def self.all
    @@all
end

def new_appointment(doctor, date)
    #binding.pry
    a = Appointment.new(date, self, doctor)
end

def appointments
    Appointment.all.select do |appointment|
        #binding.pry
        appointment.patient == self 
    end
end

def doctors
    appointments.map do |appointment|
        appointment.doctor
    end
end


end