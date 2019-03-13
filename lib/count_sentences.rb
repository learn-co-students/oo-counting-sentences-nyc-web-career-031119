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
    self.split(/\.|\?|\!/).delete_if {|w| w.size < 2}.size
  end
end

phrase = String.new("Hi, my name is Sophie.")

puts phrase.sentence?
puts phrase.question?
puts phrase.exclamation?
puts phrase.count_sentences
