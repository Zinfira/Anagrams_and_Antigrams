class Anagram
  attr_accessor(:word1, :word2)
  def initialize(word1, word2)
    @word1 = word1
    @word2 = word2
  end

  def check_vowels()
    if @word1.match?(/[aeiou]/) & @word2.match?(/[aeiou]/)
      true
    else
      false
    end
  end

  def remover()
    @word1 = word1.gsub!(/[^abcdefghijklmnopqrstuvwxyz]/i, '')       #keep only letters, no spaces and punctuation
    @word2 = word2.gsub!(/[^abcdefghijklmnopqrstuvwxyz]/i, '')       #keep only letters, no spaces and punctuation
  end

  def anagram_checker()
    @word1 = word1.downcase.split('').sort.join
    @word2 = word2.downcase.split('').sort.join
    if (@word1 == @word2) & (@word1.length == @word2.length)
      "These words are anagrams"
    elsif letters_matched.any?
      letters_matched_show = letters_matched.join(", ")
      "These words aren't anagrams but #{letters_matched.length} letters match: #{letters_matched_show}"
    else
      "These words have no letter matches and are antigrams."
    end
  end

  def letters_matched
    check1 = word1.downcase.split('').sort
    check2 = word2.downcase.split('').sort
    letters_matched = check1 & check2
  end
end
