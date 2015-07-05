require 'sinatra'

get '/' do
    erb :form
end

post '/' do
  birthdate = params[:birthdate].gsub("-", "")

  if Person.valid_birthdate(birthdate)
    birth_path_num = Person.get_birth_path_num(birthdate)
    redirect "/message/#{birth_path_num}"
  else
    @error = "Sorry, that wasn't a valid date. Use the format MMDDYYYY."
    erb :form    
  end
end

get '/:birthdate' do
    setup_index_view
end

get '/message/:birth_path_num' do
    birth_path_num = params[:birth_path_num].to_i
    @message = Person.get_message(birth_path_num)
    erb :index
end

get '/allmessages/' do
    @messages = "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun.\n\n

    Two is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon.\n
    
    Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three's enjoy life and have a good sense of humor. Ruled by Jupiter.\n
    
    Four is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus.\n
    
    Five is the freedom lover. The number five is an intellectual vibration. These are 'idea' people with a love of variety and the ability to adapt to most situations. Ruled by Mercury.\n
    
    Six is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus.\n
    
    Seven is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune.\n
    
    Eight is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn.\n
    
    Nine is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
    
    "#{@messages}"
    erb :allmessages
end

def setup_index_view
    birthdate = params[:birthdate]
    birth_path_num = Person.get_birth_path_num(birthdate)
    @message = Person.get_message(birth_path_num)
  erb :index
end







