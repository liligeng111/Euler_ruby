require 'e:\GitHub\Euler_ruby\prime.rb'

def gcd a, b
	return gcd(b, a) if a > b
	return a if b % a == 0
	return gcd(b % a, a)
end

P = Prime.new 10000

def factors n
	return [n] if P.is_prime n
	r = []
	for i in 0..P.primes.length
		p = P.primes[i]
		break if p * p > n
		
		if n % p == 0
			r.push p
			while n % p == 0 do
				n = n / p
			end
		end
	end
	r.push n unless n == 1
	return r
end

def phi n
	return n - 1 if P.is_prime n
	f = factors n
	r = n

	f.each do |e|
		r = r * (e - 1) / e
	end

	return r
end
