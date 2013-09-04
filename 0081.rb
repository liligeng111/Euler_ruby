f = File.open("txts/0081.txt")

length = 80
m = Array.new(length){Array.new(length)} 

i = 0
f.each_line do |l|
	j = 0
	l.split(',').each do |n|
		# puts n
		m[i][j] = n.to_i
		j += 1
	end
	i+= 1
end

for i in 2..length * 2 - 1
	for j in 1..length - (i - length).abs
		x = [i - length, 0].max + j - 1
		y = [i, length].min - j
		# puts "#{i} #{j} #{x} #{y}"
		t = 999999
		l = 999999
		t = m[x][y - 1] if y > 0
		l = m[x - 1][y] if x > 0
		m[x][y] += [t, l].min
	end
end

puts m[length - 1][length - 1]
