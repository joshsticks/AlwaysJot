require 'sinatra'
require 'json'
require 'sinatra/json'

get '/' do
 	File.read(File.join('public', 'index.html'))
end

get '/note/*' do
 	File.read(File.join('public', 'index.html'))
end

#dumb json api, reads and saves a json file
get '/notes.json' do
	JSON.parse( IO.read('notes.json') ).to_json
end

#post '/notes' do

#end