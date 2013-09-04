f = File.open("txts/0081.txt")

length = 80
m = Array.new(length){Array.new(length)} 

i = 0
f.each_line do |l|
	j = 0
	l.split(',').each do |n|
		# puts n
		m[j][i] = n.to_i
		j += 1
	end
	i+= 1
end

p = Array.new(length){Array.new(length, 0)} 

for i in 0..length - 1
	for j in 0..length - 1
		l = 0
		l = p[i - 1][j] if i > 0
		p[i][j] = m[i][j] + l
	end

	changed = true
	while changed
		changed = false
		for j in 0..length - 1
			u = 9999999
			d = 9999999
			u = m[i][j] + p[i][j - 1] if j > 0
			d = m[i][j] + p[i][j + 1] if j < length - 1
			n = [u, d].min
			if n < p[i][j]
				p[i][j] = n
				changed = true
			end
		end
	end
end

puts p[length - 1].min