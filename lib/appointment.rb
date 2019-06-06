class Appointment
    attr_accessor :patient
    attr_accessor :date
    attr_accessor :doctor

    @@all = []

    def initialize(patient, date, doctor = nil)
        @patient = patient
        @doctor = doctor
        @date = date
        @@all << self
    end

    def self.all
        @@all
    end
end