class Patient
    attr_accessor :name
      @@all = []

    def initialize(name)
      @name = name
      @appointments = []
      @@all << self
    end

    def self.all
      @@all
    end

    def new_appointment(date, patient=self, doctor)
      Appointment.new(date, self, doctor)
    end

    def appointments
        Appointment.all.select {|apt| apt.patient == self}
    end
end
