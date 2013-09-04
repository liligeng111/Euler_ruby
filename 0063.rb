
count = 0
for i in 1..9
	p = 1
	temp = i
	while true do
		break if temp.to_s.length != p
		puts "#{temp} = #{i}^#{p}"
		p += 1
		temp *= i
		count += 1
	end
end

puts count