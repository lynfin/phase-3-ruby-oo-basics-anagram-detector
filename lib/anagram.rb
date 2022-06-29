require 'pry'

class Anagram
  attr_reader :word, :sorted_word

  def initialize(word)
    @word = word
    @sorted_word = word.chars.sort.join
  end

  def match(words)
    found_words = []
    words.each do |word|
      word.chars.sort.join == @sorted_word ? found_words.push(word) : word
    end
    found_words
  end
end
