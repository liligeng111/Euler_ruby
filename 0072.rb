require 'e:\GitHub\Euler_ruby\math.rb'


count = 0

for i in 2..1000000
	count += phi i
	puts (i / 10000).to_s + '%' if i % 10000 == 0 
end

puts count