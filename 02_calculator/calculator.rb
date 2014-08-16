def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(array)
	array.inject(0) {|sum, item| sum = sum + item}
end

def multiply(array)
	array.inject(1) {|product, item| product = product * item}
end

def power(base, exponent)
	total = 1
	if exponent == 0
		return 1
	else
		exponent.times do
			total = base * total
		end
	end
	return total
end

def factorial(number)
	i = number
	total = 1
	number <= 1 ? 1 : while i > 1 do 
						total = total * i
						i = i - 1
					end
end