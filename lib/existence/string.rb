# frozen_string_literal: true

class String
  def present?
    !blank?
  end

  def blank?
    strip.empty?
  end
end
