require 'minitest/autorun'
require_relative 'darts'
require 'minitest/pride'

# Common test data version: 2.2.0 f60c43b
class DartsTest < Minitest::Test
  def test_missed_target
    darts = Darts.new(-9, 9)
    assert_equal(0, darts.score)
  end

  def test_on_the_outer_circle
    darts = Darts.new(0, 10)
    assert_equal(1, darts.score)
  end

  def test_on_the_middle_circle
    darts = Darts.new(-5, 0)
    assert_equal(5, darts.score)
  end

  def test_on_the_inner_circle
    darts = Darts.new(0, -1)
    assert_equal(10, darts.score)
  end

  def test_exactly_on_centre
    darts = Darts.new(0, 0)
    assert_equal(10, darts.score)
  end

  def test_near_the_centre
    darts = Darts.new(-0.1, -0.1)
    assert_equal(10, darts.score)
  end

  def test_just_within_the_inner_circle
    darts = Darts.new(0.7, 0.7)
    assert_equal(10, darts.score)
  end

  def test_just_outside_the_inner_circle
    darts = Darts.new(0.8, -0.8)
    assert_equal(5, darts.score)
  end

  def test_just_within_the_middle_circle
    darts = Darts.new(-3.5, 3.5)
    assert_equal(5, darts.score)
  end

  def test_just_outside_the_middle_circle
    darts = Darts.new(-3.6, -3.6)
    assert_equal(1, darts.score)
  end

  def test_just_within_the_outer_circle
    darts = Darts.new(-7.0, 7.0)
    assert_equal(1, darts.score)
  end

  def test_just_outside_the_outer_circle
    darts = Darts.new(7.1, -7.1)
    assert_equal(0, darts.score)
  end

  def test_asymmetric_position_between_the_inner_and_middle_circles
    darts = Darts.new(0.5, -4)
    assert_equal(5, darts.score)
  end
end