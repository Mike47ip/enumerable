require_relative 'my_enumerable'

class MyList
  include MyEnumerable

  def initialize(*items)
    @list = items
  end

  def each(&block)
    @list.each(&block)
  end
end

# Example usage
list = MyList.new(1, 2, 3, 4)

# Test #all?
puts(list.all? { |e| e < 5 }) # Should output: true
puts(list.all? { |e| e > 5 }) # Should output: false

# Test #any?
puts(list.any? { |e| e == 2 }) # Should output: true
puts(list.any? { |e| e == 5 }) # Should output: false

# Test #filter

filtered_list = list.filter(&:even?)
puts(filtered_list.inspect) # Should output: [2, 4]
