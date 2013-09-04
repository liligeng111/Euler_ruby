class Prime
	attr_reader :primes, :limit 

	def initialize limit
		@primes = [2, 3]
		@limit = limit
		expand limit
	end

	def expand limit
		@limit = limit
		next_prime = @primes.last + 2

		while next_prime < limit do
			for i in 0..@primes.length-1
				if @primes[i] * @primes[i] > next_prime
					@primes.push next_prime
					break
				end

				if next_prime % @primes[i] == 0
					break
				end
			end
			next_prime += 2
		end
	end

	def is_prime n
		expand Math.sqrt(n).to_i + 1 if n > @limit * @limit
		if n > limit
			@primes.each do |p|
				return false if n % p == 0
			end
			return true
		else 
			return @primes.include? n
		end
	end
end