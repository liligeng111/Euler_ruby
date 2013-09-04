
def solve n
	root = []
	r = Math.sqrt(n)
	a = r.floor
	diff = n - a * a
	return 0 if diff == 0
	count = a
	a *= 10

	for i in 1..99
		diff *= 100
		b = 0
		while b < 10 do
			break if (2 * a + b) * b > diff
			b += 1
		end
		b -= 1
		count += b
		diff -= (2 * a + b) * b
		a = 10 * (a + b)
	end
	return count
end

sum = 0
(1..100).each {|i| sum += solve i}
puts sum