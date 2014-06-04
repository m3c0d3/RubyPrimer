=begin
Problem Statement
Compute the sum of cubes for a given range a through b.
Write a method called sum_of_cubes to accomplish this task
Example Given range 1 to 3 the method should return 36
=end
class Problem08
  def sum_of_cubes(a, b)
    sum = 0
    (a..b).each do |i|
      sum += i**3
    end
    sum
  end

  def sum_of_cubes_solution(a, b)
    (a..b).inject(0) { |sum, x| sum += (x*x*x) }
  end
end