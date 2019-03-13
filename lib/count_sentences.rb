require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    self.split.count do |x|
     x.sentence? || x.question? || x.exclamation?
   end
  end
end
require 'pry'
