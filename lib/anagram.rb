# Your code goes here!
class Anagram
  attr_accessor :anagram

  def initialize(anagram)
    @anagram = anagram
  end

  def match(words)
    words.select do |word|
      isanagram?(word)
    end
  end

  def isanagram?(word)
    word.chars.sort == @anagram.chars.sort
  end
end
allergy = Anagram.new("allergy")
allergy.match(%w(gallery ballerina regally clergy largely leading))
