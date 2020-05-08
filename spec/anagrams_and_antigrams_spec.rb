require('rspec')
require('anagrams_and_antigrams')

describe ('Anagram') do
  it("checks if two words are anagrams and have same letters") do
    anagram = Anagram.new('ruby', 'bury')
    expect(anagram.anagram_checker).to(eq('These words are anagrams'))
  end
end