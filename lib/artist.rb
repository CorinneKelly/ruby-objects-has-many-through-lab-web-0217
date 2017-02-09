class Artist

	attr_reader :name 
	attr_accessor :genres, :songs

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
		@genres = []
		@@all << name
	end

	def add_song(song)
		@songs << song
		song.artist = self
	end

	def genres
		@songs.each {|song| @genres << song.genre }
		@genres
	end
	
	def self.all
		@@all
	end
	
end
