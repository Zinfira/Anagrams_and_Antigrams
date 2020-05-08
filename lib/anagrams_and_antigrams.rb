class Anagram
  attr_accessor(:word1, :word2)
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def remover()
    @word1 = word1.gsub!(/[^abcdefghijklmnopqrstuvwxyz]/i, '')
    @word2 = word2.gsub!(/[^abcdefghijklmnopqrstuvwxyz]/i, '')
  end

  def anagram_checker()
    @word1 = word1.downcase.split('').sort
    @word2 = word2.downcase.split('').sort
    if (@word1 == @word2) & (@word1.length == @word2.length)
      "These words are anagrams"
    else
      "These words have no letter matches and are antigrams."
    end
  end

  def check_vowels()
    if @word1.match?(/[aeiou]/) & @word2.match?(/[aeiou]/)
      true
    else
      "You need to input actual words!"
    end
  end
end
