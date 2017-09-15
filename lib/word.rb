class Word

   @@words = []

   attr_reader :id
   attr_accessor(:word1, :word2, :word3)

     def initialize(attributes)
       @word_1 = attributes.fetch(:word_1)
       @word_2 = attributes.fetch(:word_2)
       @word_3 = attributes.fetch(:word_3)
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
