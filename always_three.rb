
def always_three(number1)

number2 = number1 + 5
number2 *= 2
number2 -= 4
number2 /= 2
number2 = number2 - number1
puts "Always: #{number2}"
end

puts "Give me a number: "
number1 = gets.to_i
always_three(number1)