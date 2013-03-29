
nline = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
lline = ["8th", "6th","Union Square", "3rd", "1st"]
sixline = ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]

puts "What stop are you getting on at?"
gets_on = gets.strip.chomp
puts "What line is that"
on_line = gets.strip.chomp

puts "What stop are you getting off at?"
gets_off = gets.strip.chomp
puts "What line is that"
off_line = gets.strip.chomp

#find position of starting point subwy stop in array
i = 0
while nline[i] != gets_on
	i = i + 1
end
starting_point = i

#find position of getting off point subway stop in array
n = 0
while nline[n] != gets_off && nline[n] != "Union Square"
	n = n + 1
end
ending_point = n

#find difference in stops between starting and ending points
leg1_number = (starting_point - ending_point).abs
puts "Your subway stop is #{leg1_number} stops away"

#find number of stops from Union Station to destination
g = 0
while nline[g] != gets_off
	g = g + 1
end
leg2_number = (4 - g).abs 
puts "Your subway stop is #{leg2_number} stops away"





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
