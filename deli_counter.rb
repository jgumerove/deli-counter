# Write your code here.
katz_deli = []

def line(katz_deli)
	if katz_deli.empty?
		puts "The line is currently empty."
	else 
		message= "The line is currently:"

		katz_deli.each_with_index do |value, index|
		  message += " #{index.to_i+1}. #{value}"
		end
	
		puts "#{message}"
	end
	
end


def take_a_number(katz_deli, name)
	katz_deli.push(name)
	spot = katz_deli.index(name) + 1
	puts "Welcome, #{name}. You are number #{spot} in line."
end

def now_serving(katz_deli)
	if katz_deli.empty?
		puts "There is nobody waiting to be served!"
	else
		serving = katz_deli.first
		puts "Currently serving #{serving}."
		katz_deli.shift
	end
end
