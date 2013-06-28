require 'pp'

array = [1, 1, 1, 2, 3, 5, 5, 10, 10, 9, 8, 7, 7, 5]

	def self.mode(array)
		array.sort!
		hashish = {}
		array.each do |num|
			if hashish.key?(num)
				hashish[num] += 1
			else
				hashish[num] = 1
			end
		end
		new_array = []
		jo_momma = hashish.delete_if {|key, value| value <= 1}
		jo_momma_2 = jo_momma.each {|key, value| }
		jo_momma_2.each do |key, value|
			if value == jo_momma_2
				new_array << key
			end
		end
		pp new_array
	end

	mode(array)