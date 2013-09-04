require 'e:\GitHub\Euler_ruby\math.rb'

def perm n
	p = (phi n).to_s.chars
	s = n.to_s.chars
	return false unless p.length == s.length
	return s.sort == p.sort
end

min = 100
for i in 2..10000000
	next unless perm i
	rate = 1.0 * i / phi(i)
	next if rate > min
	min = rate
	puts i.to_s + '  ' + rate.to_s
end