# require 'pry'

class String

  def ifhelper (punctuations)
    if self.end_with?(punctuations)
      true
    else
      false
    end
  end

  def sentence?
    ifhelper(".")
  end

  def question?
    ifhelper("?")
  end

  def exclamation?
    ifhelper("!")
  end

  def count_sentences
  total = 0

  self.split(" ").map do |array|
    if array.sentence? ||array.question? ||array.exclamation?
     total += 1
    end
  end
  total
end
end


#works but ref.

# def count_sentences
#   total = 0

#   self.split(" ").map do |array|
#     if array.sentence? ||array.question? ||array.exclamation?
#     # array.each do |word|
#     #   word.sentence?
#      total += 1

#     end
#   end
#   total
# end