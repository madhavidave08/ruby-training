# frozen_string_literal: true

def triangle(a, b, c)
  # Sort sides so 'c' is always the longest side
  a, b, c = [a, b, c].sort

  # Validation:
  # 1. Any side <= 0 is invalid
  # 2. Sum of two shortest sides must be GREATER than the longest side
  raise TriangleError if a <= 0 || (a + b <= c)

  case [a, b, c].uniq.size
  when 1 then :equilateral
  when 2 then :isosceles
  else :scalene
  end
end

# Error class used in triangle_spec. No need to change this code.
class TriangleError < StandardError
end
