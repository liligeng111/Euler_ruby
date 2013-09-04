

limit = 1500000
c = []

for m in 2..limit
	break if 2 * m * m + 2 * m > limit
	if m % 2 == 0
		n = 1
		step = 1
	else
		n = 2
		step = 2
	end

	while n < m do
		c.push 2 * m * m + 2 * m * n
		n += step
	end
end

c.sort
puts c.length
i = 12
total = 0
while i < limit do
	puts i if  i % 10000 ==0
	count = 0
	c.each do |l|
		break if l > i
		next unless i % l == 0
		count += 1
		break if count > 1
	end
	total += 1 if count == 1
	i += 2
end

puts total