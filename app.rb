require('sinatra')
require('sinatra/reloader')
also_reload('lib/**/*.rb')
require('./lib/word')
require('pry')

get('/') do
  @input = Word.all()
  erb(:input)
end

post('/') do
 @word1 = params['word1']
 @word2 = params['word2']
 @word3 = params['word3']
 @words = Word.new(:word1=> @word1, :word2=> @word2, :word3=> @word3)
 @words.save
 @input = Word.all()
 erb(:input)
end
