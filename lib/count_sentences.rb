require 'pry'
#uses end_with method

class String

  def sentence?
    self.end_with?('.')#returns true if ends in (.)
  end                  #false if not

  def question?
    self.end_with?('?')
  end

  def exclamation?
    self.end_with?('!')
  end

  def count_sentences
    sentence = []
    sentence = self.split(/[.!?]/)
    sentence.delete_if {|sentence| sentence.empty?}
    sentence.count
  end
end
