class Patient
    attr_accessor :name
    attr_accessor :appointments

    @@all = []

    def initialize(name)
        @name = name
        @appointments = []
        @@all << self
    end

    def new_appointment(doctor, date)
        new_appt = Appointment.new(self, date)
        new_appt.doctor = doctor
        @appointments << new_appt
        new_appt
    end

    def doctors 
        appointments.map do |appt|
            appt.doctor
        end
    end
    
    def self.all
        @@all
    end
end