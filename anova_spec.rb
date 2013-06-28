require './anova.rb'
require 'minitest/autorun'

class AnovaTest < MiniTest::Unit::TestCase

	def setup
		@array = [9, 7, 5, 3, 1, 2, 4, 6, 8, 10]
		@array_2 = (1...500).to_a
    @array_3 = [1, 2, 3, 4, 5, 6, 7, 8, 9]
    @array_4 = [5, 15, 50, 70]
    @array_5 = [1, 1, 1, 2, 3, 5, 5, 10, 10, 9, 8, 7, 7, 5]
    @array_6 = [1, 2, 3, 4, 5, 5, 5, 6, 7, 8, 9, 10]
    @array_7 = [9, 9, 9, 7, 7, 2, 2, 2, 15, 15, 3, 3, 3, 3, 5, 5, 8, 8, 8, 8]
	end

  def test_mean
    assert_equal 5.5, ANOVA.mean(@array)
    assert_equal 250, ANOVA.mean(@array_2)
  end

  def test_median
    assert_equal 5.5, ANOVA.median(@array)
    assert_equal 32.5, ANOVA.median(@array_4)
    assert_equal 5, ANOVA.median(@array_3)
  end

  def test_mode
    assert_equal [5, 1, 10, 7], ANOVA.mode(@array_5)
    assert_equal [5], ANOVA.mode(@array_6)
    assert_equal [], ANOVA.mode(@array)
    assert_equal [8, 3, 9, 2, 15, 7, 5], ANOVA.mode(@array_7)
  end

  def test_range
  end

  def test_variance
  end

  def test_std_variation
  end

  def test_coefficient_of_variation
  end

  def test_z_score
  end

  def test_shape
  end

  def test_quartile
  end

  def test_geometric_mean
  end

  def test_inter_quartile_range
  end

  # def test_range
  #   assert_equal
  # end

end