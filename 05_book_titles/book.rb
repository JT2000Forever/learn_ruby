class Book
	attr_accessor :title
	
	def title=(st)
		@title = format_title(st)
	end
	
	def format_title(st)
		nocap = ["and", "in", "the", "of", "a", "an"]
		words = st.split
		words.each do |x| x.capitalize! unless nocap.include?(x) end
		words[0].capitalize!
		return words.join(" ")
	end
end
