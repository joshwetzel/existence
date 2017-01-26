require 'test_helper'

class TrueClassTest < Minitest::Test
  def test_present_returns_true
    assert_equal true, true.present?
  end

  def test_blank_returns_false
    assert_equal false, true.blank?
  end
end
