# frozen_string_literal: true

class String
  def present?
    !blank?
  end

  def blank?
    self.strip.empty?
  end
end
