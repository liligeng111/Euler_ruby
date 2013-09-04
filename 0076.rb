
limit = 100
S = Array.new(limit){Array.new(limit, -1)}

def solve n, m
	return 0 if m > n
	return 1 if m == n
	return S[n - 1][m - 1] if S[n - 1][m - 1] != -1
	count = 1
	for i in m..n
		# puts "#{n-i} #{i}"
		count += solve(n - i, i) 
	end
	S[n - 1][m - 1] = count
	return count
end

p solve(limit, 1) - 1

