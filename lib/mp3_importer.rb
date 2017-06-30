require 'pry'

class MP3Importer

	attr_accessor :path, :files

	@@files = []

	def initialize(path)
		@path = path
	end

	def files
		Dir.entries(@path).select {|f| !File.directory?(f) && File.extname(f) == ".mp3"}
	end

	def import
		files.each do |file|
			new_song = Song.new_by_filename(file)
		end
	end


end
