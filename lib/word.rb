class Word

   @@word_array = []

   attr_reader :id
   attr_accessor :word, :word_definition

     def initialize(attributes)
       @word = attributes.fetch('word')
       @word_definition = attributes.fetch('word_definition')
       @id = @@word_array.length + 1
     end

     def self.all()
       @@word_array
     end

     def push_word()
       @@word_array.push(self)
     end

     def self.clear()
       @@word_array = []
     end

    def self.find(id)
      word_id = id.to_i
      @@word_array.each do (word)
        if word.id == word_id
          return word
        end
      end
    end
end
