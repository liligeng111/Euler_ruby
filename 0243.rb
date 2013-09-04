require 'e:\GitHub\Euler_ruby\math.rb'
rate = 15499.0/94744

step = 2
i = step
while true do
	i += step
	break if (phi i) / (i - 1.0) < rate
end

puts i