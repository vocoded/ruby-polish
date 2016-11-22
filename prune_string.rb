#!/usr/bin/ruby

# Reference: http://codegolf.stackexchange.com/questions/100486/make-a-ceeeeeeee-program

# Basic implementation, readable
def prune_string(string, c)
  if string.to_s.empty?
    return ""
  end

  count = string.split("").count { |x| x == c }

  if string[0] != c
    string[0] + (c * count)
  else
    c * count
  end
end

# Expressive implementation, packing it in
def prune_string_golf(s, c)
  s.to_s.split("").reject.with_index { |x, i| i > 0 && x != c }.join("")
end

strings = [
  ["code.stackexchange.com", "e", "ceee"],
  ["laughter is the best medicine", "i", "liii"],
  ["Hello world!", "!", "H!"],
  ["Hello world!", "z", "H"],
  ["Test Cases", "s", "Tsss"],
]

strings.each do |test|
  result = prune_string test[0], test[1]
  result_golf = prune_string_golf test[0], test[1]
  puts result + (result == test[2] ? ": PASSED" : ": FAILED")
  puts result_golf + (result_golf == test[2] ? ": GOLF PASSED" : ": GOLF FAILED")
end

