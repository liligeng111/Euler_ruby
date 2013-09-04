limit = 1000
n = 3
d = 2
count = 0

for i in 1..limit
	d = n + d
	n = d * 2 - n
	if n.to_s.length != d.to_s.length
		puts n.to_s + '/' + d.to_s
		count += 1
	end
end

puts count 