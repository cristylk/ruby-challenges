get '/' do
	erb :index
end

get '/anagrams/:word' do
	@word = params[:word]
	@anagrams = Word.find_anagrams(@word)
	erb :show
end

post '/' do
	#@word = params[:word]
	word = params[:word]
	begin
		valid_input?(word)
		redirect "/anagrams/#{@word}"
	rescue Exception => error
		@error = error.message
		erb :index
	end
end

def three_letters?(input)
	if input.length > 3
		raise Exception.new("Word must be less than or equal to 3 characters.")
	end
end

def distinct_letters?(input)
	letter_array = input.chars
	unique_letters = input.uniq
	if unique_letters.length < letter_array.length
		false
	else
		true
	end
end

def valid_input?(input)
	if three_letters?(input) && distinct_letters?(input)
		true
	else
		false
	end
end