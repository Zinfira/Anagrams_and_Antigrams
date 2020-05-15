require('rspec')
require('anagrams_and_antigrams')


describe ('Anagram#anagram_checker') do
  it("checks if two words are anagrams and have same letters") do
    anagram = Anagram.new('ruby', 'bury')
    expect(anagram.anagram_checker).to(eq('These words are anagrams'))
  end

  it("checks if two words have different cases but still are anagrams") do
    anagram2 = Anagram.new('Tea', 'EaT')
    expect(anagram2.anagram_checker).to(eq('These words are anagrams'))
  end

  it("checks if two words have same length") do
    anagram3 = Anagram.new('stressed', 'desserts')
    expect(anagram3.anagram_checker).to(eq('These words are anagrams'))
  end

  it("checks if words are antigrams") do
    antigram = Anagram.new('hi', 'bye')
    expect(antigram.anagram_checker).to(eq("These words have no letter matches and are antigrams."))
  end

  it("checks if multiple words are anagrams") do
    anagram4 = Anagram.new('eleven plus two', 'twelve plus one')
    # expect(anagram4.anagram_checker).to(eq("These words are anagrams"))
    anagram4.remover
    anagram4.anagram_checker
    expect(anagram4.word1).to(eq('eeellnopstuvw'))
    expect(anagram4.word2).to(eq('eeellnopstuvw'))
  end
end

describe('Anagram#check_vowels') do
  it("checks if words have vowels") do
    words = Anagram.new('tea', 'eat')
    expect(words.check_vowels).to(eq(true))
  end

  it('checks if it does not have vowels') do
    notwords = Anagram.new('qwrt', 'wqtr')
    expect(notwords.check_vowels).to(eq(false))
  end
end

# describe('#anagram_checker') do
#   it("#check if it is not anagrams how many letters are matched") do
#     words = Anagram.new('cat', 'batty')
#     expect(words.check_antigram).to(eq('2'))
#   end
# end

describe('Anagram#remover') do
  it("checks if spaces, numbers and punctiation do not count") do
    anagram1 = Anagram.new('Statue of Liberty', 'Built to stay4 Free')
    anagram1.remover
    expect(anagram1.word1).to(eq('StatueofLiberty'))
    expect(anagram1.word2).to(eq('BuilttostayFree'))
  end
end

    
