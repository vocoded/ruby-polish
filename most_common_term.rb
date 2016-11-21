#!/usr/bin/ruby

def most_common_term(terms)
  term_map = {}
  terms.each do |term|
    if term_map.key?(term)
      term_map[term] += 1
    else
      term_map[term] = 1
    end
  end

  max = 0
  result = nil
  term_map.each do |term, count|
    result, max = [term, count] if count > max
  end

  result
end

terms = ["hello", "world", "free", "style", "free"]
puts most_common_term(terms)
