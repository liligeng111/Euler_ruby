
m = Array.new
m.push 1

i = 2
while true do
	n = m.last + i
	# puts "#{i} : #{n}"
	m.push n
	break if n > 2000000
	i += 1
end

d = 2000000
for i in 0..m.length - 1
	for j in 0..i - 1
		n = m[i] * m[j]
		t = (n - 2000000).abs
		# puts "#{i} #{j} #{n}"
		if t < d
			s = (i + 1) * (j + 1)
			d = t
		end
		break if n > 2000000
	end
end

puts s 
