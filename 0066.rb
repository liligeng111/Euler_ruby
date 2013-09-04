require 'e:\GitHub\Euler_ruby\math.rb'

def is_square n
	i = Math.sqrt(n).to_i
	return (n - i * i).abs < 0.00001
end

def solve k
	s = Math.sqrt(k)
	floor = s.floor
	x = floor
	y = 1
	last_x = 1
	last_y = 0

	n = 1
	d1 = 1
	d2 = floor
	while true do
		# puts n.to_s + ' ' + d1.to_s + ' ' + d2.to_s
		temp = d1 * d1 * k - d2 * d2
		a = (n * (d1 * s + d2) / temp).floor
		# puts a
		g = gcd(n, temp)
		d1 = n * d1 / g
		d2 = (- n * d2 + a * temp) / g
		n = temp / g

		temp_x = a * x + last_x
		temp_y = a * y + last_y
		last_x = x
		last_y = y
		x = temp_x
		y = temp_y
		# puts x.to_s + ' ' + y.to_s
		return x if x * x - k * y * y == 1
	end
end

#335159612
max = 0

for i in 2..1000
	# puts i
	next if is_square i
	r = solve i
	next if r < max
	max = r
	puts i.to_s + "  " + r.to_s 
end