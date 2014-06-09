=begin
Problem Statement
You are given some code in the form of lambdas.
Measure and return the time taken to execute that code.
You may use Time.now to get the current time.
=end
class Problem12
  def exec_time(proc)
    # your code here'
    t0 = Time.now
    proc.call
    Time.now - t0

  end
end