#!/usr/bin/ruby

# Reference: http://codegolf.stackexchange.com/questions/53913/the-will-rogers-phenomenon

def check_averages(first, second)
  sum1 = first.reduce(0, :+)
  sum2 = second.reduce(0, :+)
  avg1 = sum1.to_f / first.length
  avg2 = sum2.to_f / second.length

  first.any? { |term| (sum1 - term).to_f / (first.length - 1) > avg1 && (sum2 + term).to_f / (second.length + 1) > avg2 } ||
  second.any? { |term| (sum1 + term).to_f / (first.length + 1) > avg1 && (sum2 - term).to_f / (second.length - 1) > avg2 }
end

tests = [
[ [1], [2, 3], true ],
[ [1, 2, 3], [4, 5, 6], true ],
[ [3, 4, 5, 6], [2, 3, 4, 5], true ],
[ [6, 5, 9, 5, 6, 0], [6, 2, 0, 9, 5, 2], true ],
[ [0, 4], [9, 1, 0, 2, 8, 0, 5, 5, 4, 9], true ],

[ [1], [2], false ],
[ [2, 4], [5], false ],
[ [1, 5], [2, 3, 4, 5], false ],
[ [2, 1, 2, 3, 1, 3], [5, 1, 6], false ],
[ [4, 4, 5, 2, 4, 0], [9, 2, 10, 1, 9, 0], false ]
]

tests.each_with_index do |test, index|
  puts "Test #{index}: " + (check_averages(test[0], test[1]) == test[2] ? "PASSED" : "FAILED")
end
