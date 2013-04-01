require 'pry'

nline = ["Times Square", "34th", "28th", "23rd", "Union Square", "8th"]
lline = ["8th", "6th","Union Square", "3rd", "1st"]
sixline = ["Grand Central", "33rd", "28th", "23rd", "Union Square", "Astor Place"]

puts "What stop are you getting on at?"
gets_on = gets.strip.chomp
puts "What line is that"
line_one = gets.strip.chomp

#convert people's answers (strings) into names of the arrays
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

#find position of subway stop person gets on at in array

starting_point = line_one.index(gets_on)

#find position of subway stop person gets off (for Union station or destination) in array
n=0
while (line_one[n] != gets_off) && (line_one[n] != "Union Square")
	n = n + 1
end
ending_point = n

#find difference in stops between starting and ending points
leg1_number = (starting_point - ending_point).abs

#find starting point of Union Square
us_position = line_two.index("Union Square")

#find number of stops from Union Station to destination
if line_one[n] == "Union Square"
	leg2_number = (us_position - line_two.index(gets_off)).abs
else
	leg2_number = 0
end

#if person had to switch at Union Square, calculate the number of stops in leg 2. If person doesn't get off, 
#don't calculate leg 2.


total_stops = leg1_number + leg2_number

puts "#{gets_off} is #{total_stops} stops away"
