require './anova.rb'
require 'minitest/autorun'

class AnovaTest < MiniTest::Unit::TestCase

	def setup
		@myArray = [9, 7, 5, 3, 1, 2, 4, 6, 8, 10]
		@myArray_2 = (1...500).to_a
    @myArray_3 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @myArray_4 = [5, 15, 50, 70]
    @myArray_5 = [1, 1, 1, 2, 3, 5, 5, 10, 10, 9, 8, 7, 7, 5]
    @myArray_6 = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 10]
	end

  def test_the_mean_of_array_is_the_mean
    assert_equal 5.5, ANOVA.mean(@myArray)
  end

  def test_the_mean_of_array_2_is_the_mean
  	assert_equal 250, ANOVA.mean(@myArray_2)
  end

  def test_the_median_of_even_array_is_correct
    assert_equal 5.5, ANOVA.median(@myArray)
  end

  def test_the_median_of_even_weird_array_is_correct
  	assert_equal 32.5, ANOVA.median(@myArray_4)
  end

  def test_the_median_of_odd_array_is_correct
    assert_equal 5, ANOVA.median(@myArray_3)
  end

  def test_the_mode_of_array_with_multiple_modes
    assert_equal [5, 1, 10, 7], ANOVA.mode(@myArray_5)
  end

  def test_the_mode_of_array_with_single_mode
    assert_equal [5], ANOVA.mode(@myArray_6)
  end

  def test_the_mode_of_array_with_no_mode
    assert_equal [], ANOVA.mode(@myArray)
  end

end















