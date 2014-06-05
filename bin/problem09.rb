=begin
Problem Statement
Given an Array, return the elements that are present exactly once in the array.
You need to write a method called non_duplicated_values to accomplish this task.
Example: Given [1,2,2,3,3,4,5], the method should return [1,4,5]
=end
class Problem09
  def non_duplicated_values(values)
    values.find_all { |x| values.count(x) == 1 }
  end
end