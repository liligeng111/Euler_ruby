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
p[0][0] = m[0][0]
for i in 1..length - 1
	p[0][i] = p[0][i - 1] + m[0][i]
end

for i in 1..length - 1
	for j in 0..length - 1
		p[i][j] = p[i - 1][j] + m[i][j]
	end
end

changed = true
while changed
	changed = false
	for i in 0..length - 1
		for j in 0..length - 1
			u = 9999999
			d = 9999999
			l = 9999999
			r = 9999999
			u = m[i][j] + p[i][j - 1] if j > 0
			d = m[i][j] + p[i][j + 1] if j < length - 1
			l = m[i][j] + p[i - 1][j] if i > 0
			r = m[i][j] + p[i + 1][j] if i < length - 1
			n = [u, d, l, r].min
			if n < p[i][j]
				p[i][j] = n
				changed = true
			end
		end
	end
end

puts p[length - 1][length - 1]