=begin
Problem Statement
  9 is a Kaprekar number since
  9 ^ 2 = 81 and 8 + 1 = 9
  297 is also Kaprekar number since
  297 ^ 2 = 88209 and 88 + 209 = 297.
  In short, for a Kaprekar number k with n-digits, if you square it and add the right n digits to the left n or n-1
digits, the resultant sum is k.
  Find if a given number is a Kaprekar number.
=end
class Problem11
  def is_a_kaprekar?(number)
    squared = number**2
    squared_as_s = squared.to_s
    left = squared_as_s[0..(squared_as_s.length/2)-1].to_i
    right = squared_as_s[squared_as_s.length/2..-1].to_i
    left+right == number
  end
end

puts Problem11.new.is_a_kaprekar?(297).to_s