module Enumerable
  def sum(init = 0)
    result = init
    each do |i|
      if block_given?
        result += yield(i)
      else
        result += i
      end
    end
    result
  end
end
