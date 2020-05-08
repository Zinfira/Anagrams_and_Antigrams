class Anagram
  attr_accessor(:word1, :word2)
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def anagram_checker()
    @word1 = word1.split('').sort
    @word2 = word2.split('').sort
    if @word1 == @word2
      "These words are anagrams"
    end
  end
end
