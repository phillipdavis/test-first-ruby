class Timer
	def initialize
		@seconds = 0
	end
	
	def seconds=(sec)
		@seconds = sec
	end
	
	def seconds
		@seconds
	end
	
	def time_string
		seconds = padded((@seconds % 3600) % 60)
		minutes = padded((@seconds % 3600) / 60)
		hours = padded(@seconds / 3600)
		
		"#{hours}:#{minutes}:#{seconds}"
	end
	
	def padded(num)
		num < 10 ? "0" + num.to_s : num.to_s
	end
end