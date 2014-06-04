=begin
Problem Statement
Given a sentence, return true if the sentence is a palindrome.
You are supposed to write a method palindrome? to accomplish this task.
Note Ignore whitespace and cases of characters.
Example:
    Given "Never odd or even" the method should return true
=end
class Problem07
  def palindrome?(sentence)
    sentence_downcase_split = sentence.downcase.split(%r{\s*})
    sentence_downcase_split == sentence_downcase_split.reverse
  end
end