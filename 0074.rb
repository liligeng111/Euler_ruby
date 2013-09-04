F = [1]
for i in 1..9
	F.push(F[i-1] * i)
end

def df a
	s = a.to_s
	r = 0
	s.each_char do |c|
		r += F[c.to_i]
	end
	return r
end

def chain a
	r = []
	while true do
		r.push a		
		a = df a
		return r.length if r.include? a
	end
end

count = 0
for i in 1..1000000
	count += 1 if (chain i) == 60

	puts (i / 10000).to_s + '%' if i % 10000 == 0
end

puts count

