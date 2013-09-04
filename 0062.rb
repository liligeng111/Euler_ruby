


h = Hash.new

i = 1
while i < 20000
	t = i * i * i
	ts = t.to_s.chars.sort.join
	h[ts] = [] if h[ts] == nil
	h[ts].push i
	i += 1
end

h.each do |p|
	next unless p[1].length == 5
	puts p[1][0]
	puts p[1][0] * p[1][0] * p[1][0]
end