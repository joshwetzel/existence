# frozen_string_literal: true

class NilClass
  def present?
    false
  end

  def blank?
    true
  end
end
