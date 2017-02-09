class Patient
	attr_reader :name, :doctor, :appointments
	def initialize(name)
		@name = name
		@doctors = []
		@appointments = []
	end
	
	def add_appointment(appointment)
		appointment.patient = self
		@appointments << appointment

	end

	def doctors
		self.appointments.each do |app|
			@doctors << app.doctor
		end
		@doctors
	end
end