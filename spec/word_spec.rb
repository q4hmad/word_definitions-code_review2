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

  describe('#save') do
    it('saves an item to an array') do
      word1 = Word.new({"word"=> "bunny", "word_definition"=> "ears"})
      word1.save()
      word2 = Word.new({"word"=> "bear", "word_definition"=> "growly animal"})
      word2.save()
      expect(Word.all()).to(eq([word1, word2]))
    end
  end

  describe(".find") do
    it("finds an item based on its id") do
      word1 = Word.new({"word"=> "bear", "word_definition"=> "growly animal"})
      word1.save()
      expect(Word.find(1)).to(eq(word1))
    end
  end
  describe(".clear") do
    it("empties out the array of info") do
    word1 = Word.new({"word"=> "bear", "word_definition"=> "growly animal"})
    expect(Word.clear()).to(eq([]))
    end
  end
  #
  # describe("#add_def") do
  #   it("adds new definition into definition array") do
  #     word1 = Word.new([word_definition=> "growly animal"])
  #     word1.save()
  #     Word.add_def()
  #     expect(Word.all()).to(eq(["growly animal"]))
  #   end
  # end
  #



end
