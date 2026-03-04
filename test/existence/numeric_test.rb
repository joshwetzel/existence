# frozen_string_literal: true

require 'test_helper'

class NumericTest < Minitest::Test
  def test_present_returns_true_for_integer
    assert_equal true, 1.present?
  end

  def test_present_returns_true_for_zero
    assert_equal true, 0.present?
  end

  def test_present_returns_true_for_float
    assert_equal true, 1.0.present?
  end

  def test_blank_returns_false_for_integer
    assert_equal false, 1.blank?
  end

  def test_blank_returns_false_for_zero
    assert_equal false, 0.blank?
  end

  def test_blank_returns_false_for_float
    assert_equal false, 1.0.blank?
  end
end
