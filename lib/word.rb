class Word

   @@word_array = []

   attr_reader :id
   attr_accessor :word, :word_definition

     def initialize(attributes)
       @word = attributes.fetch('word')
       @word_definition = []
       @id = @@word_array.length + 1
     end

     def self.clear()
       @@word_array = []
     end

     def self.all()
       @@word_array
     end

     def add_definition(string)
       @word_definition.push(string)
     end

     def all_definitions()
       @word_definition
     end

     def save()
       @@word_array.push(self)
     end

     def self.find(id)
       word_id = id.to_i()
       @@word_array.each do |word|
         if word.id == word_id
           return word
         end
       end

    # def add_def(new_def)
    #   @word_definition.push(new_def)
    # end


    end
end
