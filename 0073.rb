require 'e:\GitHub\Euler_ruby\math.rb'

t = 1.0 / 3
count = 0

for i in 4..12000
	s = i / 3 + 1
	while s < (i + 1) / 2 do
		count += 1 if gcd(s, i) == 1
		s += 1
	end

end

puts count