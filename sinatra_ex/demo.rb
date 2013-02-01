require 'sinatra'

get '/hello' do
	"Hello world!!!"
end

get '/hello/:id' do
	if params[:id].eql? "1"
		name = "budhram"
	else
		name = "reshma"
	end

	"Hello, #{name.capitalize}. How are you?"
end

get '/form' do
  erb :form
end

post '/welcome' do
  @message = params[:message]
	erb :welcome
end
