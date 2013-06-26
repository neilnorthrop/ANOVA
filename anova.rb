class ANOVA

	def self.mean(array)
		array.reduce(:+) / array.length.to_f
	end

	def self.median(array)
		array.sort!
		if array.length % 2 == 0
			lengthNum = array.length / 2
			value_1 = array.slice!(lengthNum)
			value_2 = array.slice!(lengthNum - 1)
			self.mean([value_1, value_2])
		else
			(array.length + 1) / 2
		end
	end

	def self.mode(array)

	end

	def self.help
		#this method would return all ANOVA veriables and explainations of their purpose
	end


end