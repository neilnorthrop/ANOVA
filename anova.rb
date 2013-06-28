require 'pp'

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
		num_array = array.sort
		mode_count = {}
		num_array.each do |num|
			if mode_count.key?(num)
				mode_count[num] += 1
			else
				mode_count[num] = 1
			end
		end
		valid_mode_candidates = mode_count.delete_if { |key, value| value <= 1 }
		mode_hash = {}
		mode_array = []
		valid_mode_candidates.each do |key, value|
			if mode_hash.has_key?(value)
				mode_hash[value] << key
			else
				mode_hash[value] = []
				mode_hash[value] << key
			end
		end
		print mode_hash
		puts
		mode_hash.sort_by! { |key, value| key }
		print mode_hash
		puts
		mode_hash.each { |key, value| mode_array << value.sort.reverse! }
		print mode_array
		puts
		return mode_array.flatten
	end

	def self.help
		#this method would return all ANOVA veriables and explainations of their purpose
	end


end