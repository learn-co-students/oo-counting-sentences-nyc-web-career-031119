require 'pry'

class String

  def sentence?
    return true if self.end_with?(".")
    false
  end

  def question?
    return true if self.end_with?("?")
    false
  end

  def exclamation?
    return true if self.end_with?("!")
    false
  end

  def count_sentences
    sentence_count = 0

    self.split.each do |word|
      if word.exclamation?
      sentence_count +=1
    elsif word.question?
      sentence_count +=1
    elsif word.sentence?
      sentence_count +=1
    else
      sentence_count += 0
    end
  end
  sentence_count
end
end
