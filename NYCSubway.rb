
nline = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
lline = ["8th", "6th","Union Square", "3rd", "1st"]
sixline = ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]

puts "What stop are you getting on at?"
gets_on = gets.strip.chomp
puts "What line is that"
line_one = gets.strip.chomp

case line_one
	when "nline"
		line_one = nline
	when "lline"
		line_one = lline
	when "sixline"
		line_one = sixline
end

puts "What stop are you getting off at?"
gets_off = gets.strip.chomp
puts "What line is that"
line_two = gets.strip.chomp

case line_two
	when "nline"
		line_two = nline
	when "lline"
		line_two = lline
	when "sixline"
		line_two = sixline
end

#find position of starting point subwy stop in array
i = 0

while line_one[i] != gets_on
	i = i + 1

end
starting_point = i
#puts i

#find position of getting off point subway stop in array
n = 0
while (line_one[n] != gets_off) && (line_one[n] != "Union Square")
	n = n + 1
end
ending_point = n
#puts n

#find difference in stops between starting and ending points
leg1_number = (starting_point - ending_point).abs
#puts "Your subway stop is #{leg1_number} stops away"

#find starting point of Unions Square
u = 0
while line_two[u] != "Union Square"
	u = u + 1
end
us_position = u
#puts u

#find number of stops from Union Station to destination
g = 0
while line_two[g] != gets_off
	g = g + 1
end
#puts g
if line_one[n] == "Union Square"
	leg2_number = (us_position - g).abs
else
	leg2_number = 0
end

#puts "Your subway stop is #{leg2_number} stops away"

total_stops = leg1_number + leg2_number

puts "#{gets_off} is #{total_stops} stops away"





# while nline[starting_point] != nline[ending_point]
# 	q = q



# n = 0
# while nline[n] != gets_off
# 	n = n + 1
# end
# puts n




# puts "What stop are you getting off at?"
# get_off = gets.strip.chomp

# while gets_on != gets_off
#   NLine[i]
#   i = i +1
# end
# puts "#{i} stops"

# NLine.each do |stop|
# 	i = 0
# 	while stop != gets_off
# 		i = i +1
# 	end
# 	puts "#{i} stops"
# end
