#write your code here
def translate(word)
	vowels = "e y u i o a".split(" ")
	words = word.split
	newWords = []
	words.each do |i|
		if (!vowels.include?(i[0]) and !vowels.include?(i[1]) and !vowels.include?(i[2]) or i[0, 3] == "squ")
			newWords << (i + i[0,3]).sub(i[0,3], "") + "ay"
		elsif (!vowels.include?(i[0]) and !vowels.include?(i[1]) or i[0, 2].downcase == "qu")
			newWords << (i + i[0,2]).sub(i[0,2], "") + "ay"
		elsif (vowels.include?(i[0]))
			newWords << i + "ay"
		else
			newWords << (i + i[0]).reverse.chop.reverse + "ay"	
		end
	end
	return newWords.join(" ")
end
