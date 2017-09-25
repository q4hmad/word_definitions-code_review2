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
  word_with_definition = ({"word" => word})
  defined_word = Word.new(word_with_definition)
  defined_word.save()
  @word_array = Word.all()
  word_definition = params['word_definition']
  defined_word.add_definition(word_definition)
  erb(:input)
end

get('/words/:id') do
  @word = Word.find(params[:id])
  erb(:results_page)
end

post('/results/:id') do
  @word = Word.find(params[:id])
  word_definition = params['word_definition']
  @word.add_definition(word_definition)
  erb(:results_page)
end
