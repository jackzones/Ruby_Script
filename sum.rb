#the scope of the sum
sum = 0
[1, 2, 3].each do |value|
	square = value * value
	sum += square
end

puts sum 

