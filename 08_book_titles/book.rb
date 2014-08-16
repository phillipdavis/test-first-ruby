class Book
	def title=(title)
		exceptions = ["the", "a", "an", "and", "of", "in"]
		title_array = title.split(" ")
		title_array.map! {|i| 
							  if !exceptions.include?(i)
								i.capitalize
							  else
								i
							  end
						}
		title_array[0] = title_array[0].capitalize
		@title = title_array.join(" ")
		
	end
	
	def title
		@title
	end
end