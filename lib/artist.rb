require 'pry'

class Artist
	attr_accessor :name

	@@all = []

	def initialize(name)
		@name = name
		@songs = []
	end

	def songs 
		@songs
	end

	def save
		@@all << self
	end

	def self.all
		@@all
	end

	def add_song(song)
		@songs << song
	end

	def print_songs
		@songs.each {|song| puts song.name}
	end

	def self.find_or_create_by_name(name)
		@@all.find { |artist| artist.name == name} ? (return self.all.find { |artist| artist.name == name}) : new_artist = Artist.new(name)
		new_artist.save
		new_artist
	end


end


