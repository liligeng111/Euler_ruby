require 'e:\GitHub\Euler_ruby\prime.rb'

limit = 1000
S = Array.new(limit){Array.new(limit, -1)}
P = Prime.new limit

def solve n, m
	return 0 if m > n
	return 1 if (m == n)
	return S[n - 1][m - 1] if S[n - 1][m - 1] != -1
	count = 0
	count = 1 if P.is_prime n
	for i in m..n
		# puts "#{n-i} #{i}"
		next unless P.is_prime i
		count += solve(n - i, i) 
	end
	S[n - 1][m - 1] = count
	return count
end

# puts solve(10, 1)

i = 1
while i <= limit do
	i += 1
	next if solve(i, 1) - 1 < 5000
	puts i
	puts solve(i, 1) - 1
	break
end

