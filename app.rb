require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('pry')

get('/') do
  @word_array = Word.all()
  erb(:input)
end

post('/') do
  word = params["word"]
  word_definition = params["word_definition"]
  word_with_definition = ({"word" => word, "word_definition" => word_definition})
  defined_word = Word.new(word_with_definition)
  defined_word.save()
  @word_array = Word.all()
  erb(:definition)
end

get('/:id') do
  @word_array = Word.find(params[:id])
  erb(:results_page)
end
