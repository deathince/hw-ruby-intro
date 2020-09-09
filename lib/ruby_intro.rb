# When done, submit this entire file to the autograder.

# Part 1

def sum arr
	sums=0
	if arr.length > 0
		arr.each do |ints|
			sums+=ints
		end
	end
	return sums
end

def max_2_sum arr
  max1=0
  max2=0
  orders=0
	if arr.length > 0
		arr.each do |ints|
		  if orders==0
		    max1=ints
		  elsif orders==1
		    if ints>max1
		      max2=max1
		      max1=ints
		    else
		      max2=ints
		    end
		  elsif ints> max1
			  max2=max1
			  max1=ints
		  elsif ints> max2
			  max2=ints
		  end
		orders=orders+1
		end
	end
	return max1+max2
end

def sum_to_n? arr, n
  if arr.length > 1
    for i in 1..arr.length-1 
      for j in 0..i-1
        if arr[i]+arr[j]==n
          return true
        end
      end
    end
  end
  return false
  
end

# Part 2

def hello(name)
	strings= "Hello, #{name}"
  return strings
end

def starts_with_consonant? s
  if 	/^[^aeiouAEIOU\W]/i.match(s) == nil
 		return false
  else
 		return true
  end
end

def binary_multiple_of_4? s
  if  /^[01]*(00)$/.match(s)
  	return true
  elsif  /^(0)$/.match(s)
  	return true
  else
 		return false
  end
end
# Part 3

class BookInStock
		
	attr_accessor :isbn
	attr_accessor :price
	
  def initialize isbn,price
		@isbn=isbn
		@price=price
		if @isbn.empty? || @price <= 0
			raise ArgumentError
		end
  end


	def price_as_string
		return "$#{'%.2f' %  @price}"
	end
end
