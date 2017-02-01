class Timer
	attr_accessor :seconds
	
	def seconds()
		@seconds = 0
	end
	
	def time_string
		seconds = @seconds;
		minutes = 0
		hours = 0
		while (seconds >= 60)
			seconds -= 60
			minutes += 1
		end
		while (minutes >= 60)
			minutes -= 60
			hours += 1
		end
			
		seconds_string = "0#{seconds}"
		if (seconds > 9) 
			seconds_string.slice!(0) 
		end
		minutes_string = "0#{minutes}"
		if (minutes > 9) 
			minutes_string.slice!(0) 
		end
		hours_string = "0#{hours}"
		if (hours > 9) 
			hours_string.slice!(0) 
		end
		return "#{hours_string}:#{minutes_string}:#{seconds_string}"
	end
end
