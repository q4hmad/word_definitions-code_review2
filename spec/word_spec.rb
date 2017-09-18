require ('rspec')
require ('word')
require ('pry')

describe('Word') do
  before() do
    Word.clear()
  end

  describe('.all') do
    it('is empty at first') do
    expect(Word.all()).to(eq([]))
  end
end

  describe('#push_word') do
    it('saves an item to an array') do
      word1 = Word.new({"word"=> "bunny", "word_definition"=> "ears"})
      word1.push_word()
      word2 = Word.new({"word"=> "bear", "word_definition"=> "growly animal"})
      word2.push_word()
      expect(Word.all()).to(eq([word1, word2]))
    end
  end

  describe(".find") do
    it("finds an item based on its id") do
      word1 = Word.new({"word"=> "bear", "word_definition"=> "growly animal"})
      word1.push_word()
      expect(Word.find(1)).to(eq(word1))
    end
  end
end
