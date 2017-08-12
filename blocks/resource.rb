require_relative "using"

class Resource
  def dispose
    @disposed = true
  end

  def disposed?
    @disposed
  end
end

r = Resource.new
use(r) {}
p r.disposed?
