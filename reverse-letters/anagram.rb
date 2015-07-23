require_relative 'reverse_letters'

def find_anagram(word)
	word = word.split("")
	array2 = Array.new

	word.each_with_index do |single, index|
	remaining_letters = word.select {|x| x != single}
	array2 << single + remaining_letters.join
	
	array2 << single + reverse_letters(remaining_letters).join
	end
    array2
end