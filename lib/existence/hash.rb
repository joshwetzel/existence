# frozen_string_literal: true

class Hash
  def present?
    !empty?
  end

  alias blank? empty?
end
