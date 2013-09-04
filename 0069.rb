require 'e:\GitHub\Euler_ruby\math.rb'

max = 1

n = 210*11*13
step = 210*11*13

while n < 1000000 do
	count = 1
	i = 3
	while i < n do
		break if count > 1 + n / max
		count += 1 if gcd(i, n) == 1 
		i += 2
	end
	r = 1.0 * n / count
	if r > max
		puts n.to_s + ' ' + r.to_s
		max = r
	end
	n += step
	puts (n / 10000).to_s + '%' if (n % 10000 == 0)
end
