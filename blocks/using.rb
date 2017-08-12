module Kernel
  # there are a keyword or using method somewhere in Ruby
  # so if use using, it will throw TypeError wrong type of argument
  def use r
    begin
      yield
    ensure
      r.dispose
    end
  end
end
