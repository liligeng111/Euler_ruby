require 'e:\GitHub\Euler_ruby\prime.rb'

min = 9999999999999

def test_2 a, b
	n1 = (a.to_s + b.to_s).to_i
	n2 = (b.to_s + a.to_s).to_i
	return false unless P.is_prime n1
	return false unless P.is_prime n2
	return true
end

def test c
	c.combination(2).each do |p|
		return false unless test_2(p[0], p[1])
	end
	return true
end

pair = []
for i in 0..4
	pair[i] = []
end
pair[0].push [2]

P = Prime.new 10000

n = 1
while true do
	n += 2
	next unless P.is_prime n
	partner = []
	pair[0].each do |e|
		partner.push e[0] if test_2(e[0], n)
		pair[1].push e + [n]
	end
	pair[0].push [n]
	next if partner.length == 0

	for i in 2..4
		break if partner.length < i
		found = false
		pair[i].each do |e|
			temp = e + [n]
			if test temp
				found = true
				pair[i + 1].push temp

				if i == 2 || i == 3
					puts temp
					puts ' '
				end

			end
		end
		break unless found
	end

	break unless pair[4].length == 0 
end


# T.combination(5).each do |c|
# 	sum = c.reduce(:+)
# 	if sum < min && (test c)
# 		if min > sum
# 			min = sum
# 			puts sum
# 		end
# 	end
# end
