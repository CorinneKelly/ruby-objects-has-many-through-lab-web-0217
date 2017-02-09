class Genre
	attr_accessor :songs, :artists
	attr_reader :name
	def initialize(name)
		@name = name
		@songs = []
	end
	
	def songs
		Song.all.each do |song| 
			if song.genre == self
				@songs << song 
			end
		end
		@songs
	end

	def artists
		@artists = []
		Song.all.each do |song|  
			if song.genre == self
				@artists << song.artist
			end
		end
		@artists
	end


	
end