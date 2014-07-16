class Pet

	attr_accessor :name
	
end

class Dog < Pet

	def bark
		"ruff ruff"
	end

	def time_for_walk?
		puts "Is it time for a walk?"
		dog_response = gets.chomp
		if dog_response == "WOOF"
			puts "It's time to take #{name} for a walk."
		else
			puts "#{name} isn't ready for a walk I guess."
		end

	end

end

class Cat < Pet

	def meow
		"meowwww"
	end

	def time_for_food?
		puts "Is it time for #{name}'s food?"
		cat_response = gets.chomp
		if cat_response == "MEOW"
			puts "Yep, #{name} is hungry."
		else
			puts "I guess #{name} isn't hungry."
		end
	end
end

my_dog = Dog.new
my_dog.name = "Kevin"
my_dog.bark
my_dog.time_for_walk?

my_cat = Cat.new
my_cat.name = "Sgt. Meow"
my_cat.meow
my_cat.time_for_food?

