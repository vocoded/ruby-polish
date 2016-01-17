#! /usr/bin/ruby

# Dead simple, non-idiomatic solution
def is_palindrome(num)
  num_str = num.to_s
  max = num_str.length
  for i in (0..max / 2)
    if (num_str[i] != num_str[max-i-1])
      return false
    end
  end
  return true
end

def find_max_palindrome(num)
  max_palindrome = 0

  # Iterate the times table without duplicating products
  for x in num.downto(1)
    for y in num.downto(x)
      product = x*y
      if (is_palindrome(product) and product > max_palindrome)
        max_palindrome = product
      end
    end
  end
  return max_palindrome
end

max = 999
result = find_max_palindrome(max)
puts "The maximum palindromic product for #{max} is #{result}"
