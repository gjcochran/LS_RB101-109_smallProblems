# A triangle is classified as follows:

# equilateral All 3 sides are of equal length
# isosceles 2 sides are of equal length, while the 3rd is different
# scalene All 3 sides are of different length
# To be a valid triangle, the sum of the lengths of the two shortest sides must be greater than the length of the longest side, and all sides must have lengths greater than 0: if either of these conditions is not satisfied, the triangle is invalid.

# Write a method that takes the lengths of the 3 sides of a triangle as arguments, and returns a symbol :equilateral, :isosceles, :scalene, or :invalid depending on whether the triangle is equilateral, isosceles, scalene, or invalid.

# E
# triangle(3, 3, 3) == :equilateral
# triangle(3, 3, 1.5) == :isosceles
# triangle(3, 4, 5) == :scalene
# triangle(0, 3, 3) == :invalid
# triangle(3, 1, 1) == :invalid

# will nest an if/else within an if/else

def triangle(a, b, c)
  if (a + b) < c || (a + c) < b || (b + c) < a || a.to_i.zero? ||b.to_i.zero? || c.to_i.zero?
    :invalid
  else
    if a == b && b == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else
      :scalene
    end
  end
end

p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid

# my solution works but i believe is overly complicated.

# LS solution is below
# def triangle(side1, side2, side3)
#   sides = [side1, side2, side3]
#   largest_side = sides.max

#   case
#   when 2 * largest_side >= sides.reduce(:+), sides.include?(0)
#     :invalid
#   when side1 == side2 && side2 == side3
#     :equilateral
#   when side1 == side2 || side1 == side3 || side2 == side3
#     :isosceles
#   else
#     :scalene
#   end
# end

# explanation: "A triangle's two smaller sides should be greater than the length of the largest. The thing is, we don't know which of our sides was chosen as the "largest" when we call max on sides. So, to check for this, we make sure that the total sum of the side lengths is greater than 2 times the largest side. Another way to express this would be: largest_side > sides.reduce(:+) - largest_side"