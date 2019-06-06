class Doctor
    attr_accessor :name
    attr_accessor :appointments
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
        @appointments = []
    end

    def new_appointment(patient, date)
        new_appt = Appointment.new(patient, date)
        new_appt.doctor = self
        appointments << new_appt
        new_appt
    end

    def self.all
        @@all
    end

    def patients
        appointments.map do |appt|
            appt.patient
        end
    end

end