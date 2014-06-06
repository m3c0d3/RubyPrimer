=begin

Problem Statement
Given an array, return true if all the elements are Fixnums.
You need to write array_of_fixnums? method to accomplish this task.
Example:
 Given [1,2,3], the method should return true
=end

class Problem10
  def array_of_fixnums?(array)
    # Write your code here
    array.all? { |e| e.is_a?(Fixnum) }
  end
end