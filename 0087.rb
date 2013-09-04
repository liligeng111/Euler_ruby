require 'e:\GitHub\Euler_ruby\prime.rb'


limit = 50000000
list = []

p = Prime.new 10000

for i in 0..p.primes.length - 1
	s = p.primes[i] * p.primes[i]
	break if s > limit
	for j in 0..p.primes.length - 1
		c = p.primes[j] * p.primes[j] * p.primes[j]
		break if s + c > limit
		for k in 0..p.primes.length - 1
			f = p.primes[k] * p.primes[k] * p.primes[k] * p.primes[k]
			break if s + c + f > limit
			list.push s + c + f
		end
	end
end

puts list.uniq.length