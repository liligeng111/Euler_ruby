f = File.open("txts/0089.txt")

Table = {}
Table['I'] = 1
Table['V'] = 5
Table['X'] = 10
Table['L'] = 50
Table['C'] = 100
Table['D'] = 500
Table['M'] = 1000

Code = {}
Code[1000] = 'M'
Code[900] = 'CM'
Code[500] = 'D'
Code[400] = 'CD'
Code[100] = 'C'
Code[90] = 'XC'
Code[50] = 'L'
Code[40] = 'XL'
Code[10] = 'X'
Code[9] = 'IX'
Code[5] = 'V'
Code[4] = 'IV'
Code[1] = 'I'

def decode l
	count = 0
	current = 0
	str = l.reverse
	str.each_char do |c|
		v = Table[c]
		if v < current
			count -= v
			next
		end
		current = v
		count += v
	end

	return count
end

def encode_recursion n, str
	return str if n == 0
	Code.each do |c|
		next unless n >= c[0]
		n -= c[0]
		str += c[1]
		break
	end
	return encode_recursion(n, str)
end

def encode n
	encode_recursion(n, "")
end

count = 0
f.each_line do |l|
	l = l.chomp
	o = l.length
	n = encode(decode l).length
	if o < n
		puts 'something went wrong...'
		puts l
		break			
	end
	count += o - n
end

# (1..50000).each do |c|
# 	puts "#{c} " + (encode c)  unless  c == decode(encode c)
# end

puts count

# puts encode 1606
