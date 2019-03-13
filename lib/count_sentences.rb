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

      #Using Ternary Operator
      word.exclamation? || word.question? || word.sentence? ? count +=1 : count +=0

      # Using Case Statements
      # case word[-1]
      # when '?'
      #     count += 1
      #   when '!'
      #     count += 1
      #   when '.'
      #     count += 1
      # end

      # Using Conditional Statements
      # if word.exclamation?
      #   count += 1
      # elsif word.question?
      #   count += 1
      # elsif word.sentence?
      #   count += 1
      # else
      #   count += 0
      # end
    end
    count
  end
end

"asdf asd.. d d fa!? sd.".count_sentences
