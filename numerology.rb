def birthdate
	print "Please enter your birthdate like this (MMDDYYYY): "
	birthdate = gets
end

def birth_path_number(birthdate)
	first_number = birthdate[0].to_i
	second_number = birthdate[1].to_i
	third_number = birthdate[2].to_i
	fourth_number = birthdate[3].to_i
	fifth_number = birthdate[4].to_i
	sixth_number = birthdate[5].to_i
	seventh_number = birthdate[6].to_i
	eighth_number = birthdate[7].to_i
	number = first_number + second_number + third_number + fourth_number + fifth_number + sixth_number + seventh_number + eighth_number
	number = number.to_s

	secound_round_first_number = number[0].to_i
	secound_round_second_number = number[1].to_i
	number_second_round = secound_round_first_number + secound_round_second_number

	if (number_second_round > 9)
		number_second_round.to_s
		third_round_first_number = number_second_round[0].to_i
		third_round_second_number = number_second_round[1].to_i
		final_round = third_round_first_number + third_round_second_number
	else
		final_round = number_second_round
	end

	puts "Your numerology number is #{final_round}."
	final_round = number_second_round
end


def message(final_round)
	case final_round
	when 1
		puts "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
	when 2
		puts "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when 3
		puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Threes enjoy life and have a good sense of humor. Ruled by Jupiter."
	when 4
		puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when 5
		puts "This is the freedom lover. The number five is an intellectual vibration. These are idea people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when 6
		puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when 7
		puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when 8
		puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
	when 9
		puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars. "
	else
		puts "Something went wrong with the program. Try again."
	end
end









