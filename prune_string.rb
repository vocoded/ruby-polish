#!/usr/bin/ruby

# Reference: http://codegolf.stackexchange.com/questions/100486/make-a-ceeeeeeee-program

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

def prune_string_golf(string, c)
  string.to_s.split("").reject.with_index { |x, i| i > 0 && x != c }.join("")
end

strings = [
  ["code.stackexchange.com", "e", "ceee"],
  ["laughter is the best medicine", "i", "liii"]
]

strings.each do |test|
  result = prune_string_golf test[0], test[1]
  puts result + (result == test[2] ? ": PASSED" : ": FAILED")
end

