class Word

   @@words = []

   attr_reader :id
   attr_accessor(:word1, :word2, :word3)

     def initialize(attributes)
       @word1 = attributes.fetch(:word1)
       @word2 = attributes.fetch(:word2)
       @word3 = attributes.fetch(:word3)
       @id = @@words.length + 1
     end

     def self.all()
       @@words
     end

     def save()
       @@words.push(self)
     end

     def self.clear()
       @@words = []
     end

    def self.find(id)
      word_id = id.to_i
      @@words.each do (word)
        if word.id = word_id
          return word
        end
    end
  end
end
