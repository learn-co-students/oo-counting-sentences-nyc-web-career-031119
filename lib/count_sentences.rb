require 'pry'

class String

  def sentence?
    self[-1] == '.' ? true:false
  end

  def question?
    self[-1] == '?' ? true:false
  end

  def exclamation?
    self[-1] == '!' ? true:false
  end

  def count_sentences
    count = 0
    self.split(' ').each do |word|
      # binding.pry
      if word.exclamation?
        count += 1
      elsif word.question?
        count += 1
      elsif word.sentence?
        count += 1
      else
        count += 0
      end
    end
    count
  end
end

"asdf asd d d fa sdf".count_sentences
