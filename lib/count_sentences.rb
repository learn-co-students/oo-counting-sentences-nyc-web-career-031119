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
    # binding.pry
    self.split(/[.?!]/).delete_if {|count| count.length < 1}.length
    # binding.pry
  end
end
