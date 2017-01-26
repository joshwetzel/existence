require 'test_helper'

class FalseClassTest < Minitest::Test
  def test_present_returns_false
    assert_equal false, false.present?
  end

  def test_blank_returns_true
    assert_equal true, false.blank?
  end
end
