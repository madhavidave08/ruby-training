# frozen_string_literal: true

def quadrilateral(a, b, c, d)
  angles = [a, b, c, d]
# 1. Validate FIRST (This stops the method if there's an error)
  raise QuadrilateralError if angles.any? { |angle| angle <= 0 } || angles.sum != 360

# 2. Classify LAST (This is now the return value, so it's NOT void)
  sorted_angles = angles.sort
  if sorted_angles[0] == sorted_angles[3]
    %i[square rectangle]
  elsif sorted_angles[0] == sorted_angles[1] && sorted_angles[2] == sorted_angles[3]
    %i[parallelogram rhombus]
  else
    [:quadrilateral]
  end
end

# Error class used in quadrilateral_spec. No need to change this code.
class QuadrilateralError < StandardError
end
