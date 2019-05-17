class Array
  def uniq
    if block_given?
      hash = group_by { |i| yield(i) }
      hash.map { |k, v| v.first }
    else
      group_by(&:itself).keys
    end
  end
end

module Enumerable
  def uniq(&block)
    to_a.uniq(&block)
  end
end
