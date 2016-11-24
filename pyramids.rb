#!/usr/bin/ruby

def create_pyramid(size)
  p = ""
  (0...size-1).each do |i|
    p += " " * (2 * (size - i - 1))
    q = ""
    (0...i).each do |j|
      q += (65 + j).chr + " "
    end
    p += q + (65 + i).chr + q.reverse
    p += " " * (2 * (size - i - 1)) + "\n"
  end
  r = (0...size-1).to_a.map { |i| (65 + i).chr }.join(" ")
  p + r + " " + (64 + size).chr + " " + r.reverse + p.reverse
end

puts create_pyramid(ARGV[0].to_i)

