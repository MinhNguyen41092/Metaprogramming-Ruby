class String
  def to_alphanumeric
    # replace all chars of string s that match the pattern
    # with second argument.
    gsub(/[^\w\s]/, '')
  end
end

s = "#meta, *programming, #*Ruby"
puts s.to_alphanumeric
