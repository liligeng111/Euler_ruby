max = 0
l = 1.0 * 3 / 7


for i in 8..1000000
	a = i * 3 / 7
	while true
		r = 1.0 * a / i
		break if 7 * a == 3 * i
		break if r > l
		if (r > max)
			max = r
			puts a.to_s + ' / ' + i.to_s + ' = ' + r.to_s
		end
		a += 1
	end
end