Array.class_eval do
  def pagination(options = {})
    raise ArgumentError, "parameter hash expected (got #{options.inspect})" unless Hash === options
      # Slice and dice :)
  end
end