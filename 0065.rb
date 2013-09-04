

x = 2
y = 1
last_x = 1
last_y = 0

for i in 1..100 - 1
	if i % 3 == 2
		a = i / 3 * 2 + 2
	else
		a = 1
	end

	temp_x = a * x + last_x
	temp_y = a * y + last_y
	last_x = x
	last_y = y
	x = temp_x
	y = temp_y
	# puts x.to_s + ' ' + y.to_s
end

count = 0
x.to_s.chars.each{|c| count += c.to_i}
puts count