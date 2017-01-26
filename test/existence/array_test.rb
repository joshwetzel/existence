require 'test_helper'

class ArrayTest < Minitest::Test
  def test_present_returns_true_when_not_empty
    assert_equal true, ['test'].present?
  end

  def test_present_returns_false_when_empty
    assert_equal false, [].present?
  end

  def test_blank_returns_true_when_empty
    assert_equal true, [].blank?
  end

  def test_blank_returns_false_when_not_empty
    assert_equal false, ['test'].blank?
  end
end
