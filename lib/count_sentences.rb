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
    array = []
    self.split.each do |variable|
      if variable.include?(".") || variable.include?("?") || variable.include?("!")
        array << variable
      end
    end
    array.count
  end
end
