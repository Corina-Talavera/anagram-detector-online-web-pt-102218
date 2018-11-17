# Your code goes here!
class Anagram
  attr_accessor :anagram

  def initialize(anagram)
    @anagram = anagram
  end

  def match(word)
    words.select do |word|
      possible_anagram(word)
    end
  end

  def possible_anagram(word)
    word.chars.sort == @anagram.chars.sort
  end
end
allergy = Anagram.new("allergy")
allergy.match(%w(gallery ballerina regally clergy largely leading))
