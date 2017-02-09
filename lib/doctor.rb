class Doctor
	attr_reader :name
	attr_accessor :appointments, :patients

	@@all = []

	def initialize(name)
		@name = name
		@appointments = []
		@patients = []
		@@all << self
	end
	
	def add_appointment(appointment)
		@appointments << appointment
		appointment.doctor = self
	end

	def patients
		self.appointments.each do |app|
			@patients << app.patient
		end
		@patients
	end

	def self.all
		@@all
	end

end