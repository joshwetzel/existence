require 'test_helper'

class NilClassTest < Minitest::Test
  def test_present_returns_false
    assert_equal false, nil.present?
  end

  def test_blank_returns_true
    assert_equal true, nil.blank?
  end
end
