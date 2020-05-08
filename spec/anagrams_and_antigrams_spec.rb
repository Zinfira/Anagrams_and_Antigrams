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

  it("checks if words are antigrams") do
    antigram = Anagram.new('hi', 'bye')
    expect(antigram.anagram_checker).to(eq("These words have no letter matches and are antigrams."))
  end
end