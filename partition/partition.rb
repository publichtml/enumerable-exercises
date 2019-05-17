module Enumerable
  def partition
    truthy = []
    falsey = []
    each do |i|
      if yield(i)
        truthy << i
      else
        falsey << i
      end
    end
    [truthy, falsey]
  end
end
