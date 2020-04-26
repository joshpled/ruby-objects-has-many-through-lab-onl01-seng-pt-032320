class Patient
attr_accessor :name
  @@all = []

def initialize(name)
  @name = name
  @@all << self
end

def self.all
  @@all
end 

def new_appointment(date, patient, doctor)
  Appointment.new(date, self, doctor)
end 

end
