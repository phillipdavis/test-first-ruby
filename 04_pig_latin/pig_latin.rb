def translate(word)
	vowel = word.index(/[aeiou]/)
	
	if word.include?(" ")
		words = word.split(" ")
		words.map! {|w| translate(w)}
		return words.join(" ")
	end
	
	if vowel == 0
		word << "ay"
	elsif vowel > 0
		consonant = word.split("")
		
		if word[0] == "q" && word[1] == "u"
			consonant[consonant.length] = consonant[0..vowel].join
			consonant.shift(2)
		elsif word[1] == "q" && word[2] == "u"
			consonant[consonant.length] = consonant[0..vowel].join
			consonant.shift(vowel + 1)
		else
			consonant[consonant.length] = consonant[0..vowel - 1].join
			consonant.shift(vowel)
		end
		
		c = consonant.join
		c << "ay"
	end
end