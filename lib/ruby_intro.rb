# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  total = 0
  arr.each { |x| total += x }
  total
end

def max_2_sum(arr)
  return 0 if arr.empty?
  return arr[0] if arr.length == 1
  arr = arr.sort
  arr[-1] + arr[-2]
end

def sum_to_n?(arr, n)
  arr.combination(2).any? { |x, y| x + y == n }
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  "Hello, #{name}"
end

def starts_with_consonant?(s)
  # YOUR CODE HERE
  return false if s.empty? || s.nil?
  s[0] =~ /[b-df-hj-np-tv-z]/i
end

def binary_multiple_of_4?(s)
  # YOUR CODE HERE
  return false unless s =~ /^[01]+$/
  s.to_i(2) % 4 == 0
end

# Part 3

class BookInStock
  def initialize(isbn, price)
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  attr_accessor :isbn, :price

  def price_as_string
    format("$%.2f", @price)
  end

end
