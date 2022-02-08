class Anagram
  attr_reader :word, :word_array

  def initialize(word)
    @word = word.downcase
    @word_array = @word.chars.sort
  end

  def match(potential_anagrams)
    potential_anagrams.select { |pa| pa.downcase.chars.sort == word_array && pa.downcase != word }
  end
end
