class Word < ActiveRecord::Base

def self.reverse_letters(letters)
	#bring in the array of letters
	length = letters.length 	#find out how long the original array is
	array_result = Array.new(length) 	#2nd array is same length as first

	letters.each_with_index do |letter, index|	#for each letter in the orig array find out the index
		array_result[length - index - 1] = letter    #in the 2nd array take the length, subtract the current index
	end

	array_result

end

def self.find_anagrams(word)
	word = word.split("")
	array2 = Array.new

	word.each_with_index do |single, index|
	remaining_letters = word.select {|x| x != single}
	#potential_anagram = single + remaining_letters.join
	#if Word.find_by_text(potential_anagram).present?
	#	array2 << potential_anagram
	#end
	array2 << single + remaining_letters.join
	
	array2 << single + reverse_letters(remaining_letters).join
	end
    
    array2
end

end