def reverse_letters(letters)
	#bring in the array of letters
	length = letters.length 	#find out how long the original array is
	array_result = Array.new(length) 	#2nd array is same length as first

	letters.each_with_index do |letter, index|	#for each letter in the orig array find out the index
		array_result[length - index - 1] = letter    #in the 2nd array take the length, subtract the current index
	end

	array_result

end