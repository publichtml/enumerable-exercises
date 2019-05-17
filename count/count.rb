class Array
  def count(value = nil, &block)
    index = 0
    each do |i|
      if block_given?
        index += 1 if yield(i)
      elsif value.nil? || i == value
        index += 1
      end
    end
    index
  end
end

module Enumerable
  def count(value = nil, &block)
    self.to_a.count(value, &block)
  end
end
