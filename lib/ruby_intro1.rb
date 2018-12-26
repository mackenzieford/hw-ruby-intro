# When done, submit this entire file to the autograder.

# Part 1


  # YOUR CODE HERE
  #Define a method sum(array) that takes an array of integers as an 
  #argument and returns the sum of its elements. For an empty array 
  #it should return zero. Run associated tests via: 
  # $ rspec spec/part1_spec.rb:6
def sum arr
	x = 0;
	for i in arr
		x = x + i
	end
	x = x
end

#Define a method max_2_sum(array) which takes an array of integers 
#as an argument and returns the sum of its two largest elements. 
#For an empty array it should return zero. For an array with just 
#one element, it should return that element. Run associated tests 
#via: $ rspec spec/part1_spec.rb:24


def max_2_sum arr
  #YOUR CODE HERE
  	x = -1000;
  if arr.length == 0
  		x = 0

  elsif arr.length == 1
  		puts "arr length is 1"
  		x = arr[0]
  else 
  	for i in arr
  		if i >= x
  			x = i
  			arr.delete_at(arr.index(i))
  		end
  	end
  	y = -1000;
  	  	for i in arr
  		if (i >= y) 
  			y = i
  		end
  	end
		sum = x + y	
  end

end

#Define a method sum_to_n?(array, n) that takes an array of 
#integers and an additional integer, n, as arguments and returns
# true if any two elements in the array of integers sum to n. 
#sum_to_n?([], n) should return false for any value of n, by 
#definition. Run associated tests via:
# $ rspec spec/part1_spec.rb:43




def sum_to_n? arr, n
	if arr.length == 0
		x = false
	else
	(arr.empty? && n.zero?) || arr.permutation(2).any? { |a, b| a + b == n }
  	end
  # YOUR CODE HERE
end

# Part 2


#Define a method hello(name) that takes a string representing
#a name and returns the string "Hello, " concatenated with the
# name

def hello(name)
 x = "Hello, "+ name 
end

def starts_with_consonant? s
	if s.length == 0
		return false
	else
		!!(s[0] =~ /[bcdfghjklmnprstvwxyz]+/i)
	end
end




#Define a class BookInStock which represents a book with an 
#ISBN number, isbn, and price of the book as a floating-point
# number, price, as attributes. Run associated tests via: 
#$ rspec -e 'getters and setters' spec/part3_spec.rb

#The constructor should accept the ISBN number (a string,
# since in real life ISBN numbers can begin with zero and 
#can include hyphens) as the first argument and price as 
#second argument, and should raise ArgumentError (one 
#of Ruby's built-in exception types) if the ISBN number is
# the empty string or if the price is less than or equal to 
#zero. Include the proper getters and setters for these 
#attributes. Run associated tests via: $ rspec -e 'constructor'
# spec/part3_spec.rb

#Include a method price_as_string that returns the price of
# the book formatted with a leading dollar sign and two decimal
# places, that is, a price of 20 should format as "$20.00"
# and a price of 33.8 should format as "$33.80". 
#Run associated tests via: $ rspec -e '#price_as_string'
# spec/part3_spec.rb

# Part 3

class BookInStock
  attr_accessor :isbn, :price

  def initialize isbn, price
    raise ArgumentError if isbn.empty? || price <= 0
    @isbn = isbn
    @price = price
  end

  def price_as_string
    format("$%.2f", @price)
  end

end
#class BookInStock
# YOUR CODE HERE
#end
