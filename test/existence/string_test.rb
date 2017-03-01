require 'test_helper'

class StringTest < Minitest::Test
  PRESENT = ['test', 'test ', ' test', ' test ']
  BLANK = ['', ' ', '   ', "  \n\t  \r "]

  def test_present
    PRESENT.each { |value| assert_predicate value, :present? }
    BLANK.each { |value| refute_predicate value, :present? }
  end

  def test_blank
    BLANK.each { |value| assert_predicate value, :blank? }
    PRESENT.each { |value| refute_predicate value, :blank? }
  end
end
