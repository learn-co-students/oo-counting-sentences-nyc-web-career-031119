require 'pry'

class String

  def sentence?
    if self.end_with?(".")
      true
    else
      false
    end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end
  end

  def exclamation?
    if self.end_with?("!")
      true
    else
      false
    end
  end

  def count_sentences
    i = 0
    self_array = self.split()
    self_array.map do |word|
      if word.end_with?("!")
        i+=1
      elsif word.end_with?(".")
        i+=1
      elsif word.end_with?("?")
        i+=1
      end

    end
    return i
  end
end
