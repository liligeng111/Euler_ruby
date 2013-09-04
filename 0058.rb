require 'e:\GitHub\Euler_ruby\prime.rb'


P = Prime.new 10
d = [1]
i = 3
count = 0


while true do
	for j in 1..3
		n = i * (i - j) + j
		d.push n
		count += 1 if P.is_prime n
	end

	rate =  1.0 * count / ((d.length - 1) / 3 * 4 + 1)
	puts rate.to_s + ' ' + i.to_s 
	if rate < 0.1
		break
	end
	i += 2
end

puts P.limit

