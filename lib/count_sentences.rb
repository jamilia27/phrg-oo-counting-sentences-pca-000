require 'pry'

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

  def statement?
    self.sentence? || self.question? || self.exclamation?
  end

  def count_sentences
    counter = 0
    self.split(" ").each do |word|
      counter += 1 if word.statement?
    end
    counter
  end
end
