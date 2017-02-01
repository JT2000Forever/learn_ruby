#write your code here
def echo(word)
	return word
end

def shout(word)
	return word.upcase
end

def repeat(word, n = 2)
	return "#{word}" + (" #{word}" * (n - 1))
end

def start_of_word(word, n = 1)
	return word[0, n]
end

def first_word(word, n = 1)
	return word.split()[0]
end

def titleize(word)
	words = word.split
	newWords = []
	words.each do |i|
		if (i == "and" or i == "of" or i == "over" or i == "the")
			newWords << i
		else
			newWords << i.sub(i[0], i[0].upcase)
		end
	end
	newWords = newWords.join(" ")
	return newWords.sub(newWords[0], newWords[0].upcase)
end
