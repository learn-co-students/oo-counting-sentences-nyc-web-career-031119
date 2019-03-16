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
    self.gsub(/[a-zA-Z0-9,]/, '').squeeze.split.size   
  end

end

t = String.new("This, well, is a sentence. This is too!! And so is this, I think? Woo...")

p t.count_sentences