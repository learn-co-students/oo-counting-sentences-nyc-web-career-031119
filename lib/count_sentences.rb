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
    parse = self.split()
    punctuations = [".","?","!"]
    count = 0
    parse.each do |word|
      if punctuations.include?(word[-1]) 
        count+=1
      end
    end
    count
  end
end
