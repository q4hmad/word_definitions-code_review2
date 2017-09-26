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

    describe("#id") do
       it("increments an id by 1 each time a new item is added") do
         word1 = Word.new({"word"=> "bear", "word_definition"=> "growly animal"})
         word1.save()
         word2 = Word.new({"word"=> "bunny", "word_definition"=> "big ears"})
         word2.save()
         expect(word1.id()).to(eq(1))
         expect(word2.id()).to(eq(2))
       end
     end

     describe(".clear") do
       it("empties out the words from array") do
         word1 = Word.new({"word"=> "bear", "word_definition"=> "growly animal"})
         word1.save()
         Word.clear()
         expect(Word.all()).to(eq([]))
       end
     end

     describe("#add_definition") do
       it("adds input into definition array") do
       word = Word.new({"word"=> "rabbit", "word_definition"=> "all ears"})
       word.save
       expect(word.add_definition("all ears")).to(eq(["all ears"]))

     end
   end
end
