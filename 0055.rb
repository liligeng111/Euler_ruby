def is_palindrome n 
	return n == (reverse n)
end

def reverse n
	r = 0;
	while true do
		d = n % 10
		n /= 10
		r *= 10
		r += d

		if n == 0
			break
		end
	end
	return r
end

def is_lychrel n
	for i in 0..51
		n += (reverse n)
		# puts n
		
		if is_palindrome n
			return false
		end
	end
	return true
end

count = 0
for i in 1..10000
	if is_lychrel i
		puts i
		count += 1
	end
end

# puts is_lychrel 4994
puts count