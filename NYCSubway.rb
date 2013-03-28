
nline = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]

puts "What stop are you getting on at?"
gets_on = gets.strip.chomp

i = 0
while nline[i] != gets_on
	i = i + 1
end
puts i

puts "What stop are you getting off at?"
gets_off = gets.strip.chomp

n = 0
while nline[n] != gets_off
	n = n + 1
end
puts n




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
