primes = [2]
next_prime = 3
limit = 1000000
max = 0


while next_prime < limit do
	for i in 0..primes.length-1
		if primes[i] * primes[i] > next_prime
			primes.push next_prime
			break
		end

		if next_prime % primes[i] == 0
			break
		end
	end
	next_prime += 2
end

for i in 0..primes.length-1
	sum = 0
	for j in i..primes.length-1
		sum += primes[j]
		if sum > limit
			break
		end

		if j-i > max && (primes.include? sum)
			max = j - i + 1
			n = sum
		end
	end
end

puts max
puts n
