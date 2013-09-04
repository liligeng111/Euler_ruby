class Digit
	attr_reader :digits, :size 

	def initialize size
		@digits = Array.new(size, 0)
		@size = size
	end

	def to_s
		@digits.reverse.join.to_i
	end

	def +(other)
		@digits[0] += other
		normalize
		return self
	end

	def *(other)
		(0..size - 1).each {|i| digits[i] *= other}
		normalize
		return self
	end

	def normalize
		for i in 0..size - 1
			@digits[i + 1] += digits[i] / 10 if i < size - 1
			@digits[i] %= 10
		end
	end
end