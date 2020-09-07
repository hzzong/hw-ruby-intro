# When done, submit this entire file to the autograder.

# Part 1

def sum(arr)
  # YOUR CODE HERE
  if !arr.any?
    return 0
  end
  total = 0
  arr.each do |item|
    total = total + item
  end
  #total = arr.sum
  return total
end

def max_2_sum(arr)
  # YOUR CODE HERE
  if !arr.any?
    return 0
  end
  total = 0
  if arr.length == 1
    return arr[0]
  end
  stepArray = arr.max(2)
  total = stepArray[1] + stepArray[0]
  return total
end

def sum_to_n?(arr, n)
  # YOUR CODE HERE
  if !arr.any?
    return false
  end
  if arr.length == 1
    return false
  end
  return arr.combination(2).any? {|x, y| x + y == n}  
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, " + name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  s.downcase
  return /^[bcdfghjklmnprstvwxyz]/i.match(s) != nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  return true if s == "0"
	s =~ /^[01]*00$/
end

# Part 3

class BookInStock
# YOUR CODE HERE
attr_accessor :isbn
attr_accessor :price

  def initialize(isbn, price)
    raise ArgumentError,
          "Illegal argument" if isbn.empty? || price <= 0
   @isbn = isbn
  @price = price
  end
  
  def price_as_string
    "$%2.2f" % @price
  end
end
