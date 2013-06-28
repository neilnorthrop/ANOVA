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
		occurence_count = {}
		num_array.each do |num|
			if occurence_count.key?(num)
				occurence_count[num] += 1
			else
				occurence_count[num] = 1
			end
		end

		valid_mode_candidates = occurence_count.delete_if { |key, value| value <= 1 }

		mode_hash = {}
		valid_mode_candidates.each do |key, value|
			if mode_hash.has_key?(value)
				mode_hash[value] << key
			else
				mode_hash[value] = []
				mode_hash[value] << key
			end
		end

		keys = mode_hash.keys.sort.reverse

		new_hash_temp_name = {}
		keys.each do |key|
			new_hash_temp_name[key] = mode_hash[key]
		end

		final_mode_array = []
		new_hash_temp_name.each { |key, value| final_mode_array << value.sort.reverse! }

		return final_mode_array.flatten
	end

	# def self.help
	# 	#this method would return all ANOVA veriables and explainations of their purpose
	# end

end