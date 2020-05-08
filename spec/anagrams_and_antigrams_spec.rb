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

  it("checks if spaces, numbers and punctiation do not count") do
    anagram4 = Anagram.new()
    anagram4.word1 = 'Statue of Liberty'
    anagram4.word2 = 'Built to stay4 Free'
    expect(anagram4.word1.anagram_checker).to(eq('statueofliberty'))
    expect(anagram4.word2.anagram_checker).to(eq('builttostayfree'))
  end
end

describe('Anagram#check_vowels') do
  it("checks if words have vowels") do
    words = Anagram.new('tea', 'eat')
    expect(words.check_vowels).to(eq(true))
  end

  it('checks if it does not have vowels') do
    notwords = Anagram.new('qwrt', 'wqtr')
    expect(notwords.check_vowels).to(eq("You need to input actual words!"))
  end
end
    
