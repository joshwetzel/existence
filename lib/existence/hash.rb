class Hash
  def present?
    !empty?
  end

  alias_method :blank?, :empty?
end
