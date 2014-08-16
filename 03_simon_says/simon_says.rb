def echo(e)
	e
end

def shout(s)
	s.upcase
end

def repeat(r, num = 2)
	r_list = []
	if num > 1
		num.times do
			r_list.push(r)
		end
	else
		2.times do
			r_list.push(r)
		end
	end
	r_list.join(" ")
end

def start_of_word(word, num)
	word[0..num - 1]
end

def first_word(sentence)
	sentence.split[0]
end

def titleize(string)
	words = ["and", "the", "over"]
	str = string.split.map { |s|
							if words.include?(s)
								s
							else
								s.capitalize
							end
						   }
	str[0] = str[0].capitalize
	str.join(" ")
end