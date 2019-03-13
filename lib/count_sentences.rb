require 'pry'

class String

  def sentence?
    self.include?(".") ? true:false
  end

  def question?
    self.include?("?") ? true:false
  end

  def exclamation?
    self.include?("!") ? true:false
  end

  def count_sentences
    self.split(/[.!]/).length
    # binding.pry
  end
end
