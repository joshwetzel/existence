# frozen_string_literal: true

require 'test_helper'

class SymbolTest < Minitest::Test
  def test_present_returns_true
    assert_equal true, :test.present?
    assert_equal true, :'.'.present?
  end

  def test_blank_returns_false
    assert_equal false, :test.blank?
    assert_equal false, :'.'.blank?
  end
end
