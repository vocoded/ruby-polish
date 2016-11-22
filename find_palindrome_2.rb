#! /usr/bin/ruby

def is_palindrome(num)
  num_str = num.to_s
  max = num_str.length

  (0..max / 2).select { |i| num_str[i] != num_str[max-i-1] }.size == 0
end

def find_max_palindrome(num)
  max_palindrome = 0

  for x in num.downto(1)
    for product in num.downto(x).map { |y| x*y }.select { |p| is_palindrome(p) }
      if (product > max_palindrome)
        max_palindrome = product
      end
    end
  end
  return max_palindrome
end

max = 999
result = find_max_palindrome(max)
puts "The maximum palindromic product for #{max} is #{result}"
