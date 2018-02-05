require "sinatra"
enable :sessions

get '/' do
	erb :home
end

post '/name' do
	session[:name] = params[:name]
	redirect '/welcome'
end

get '/welcome' do
	student_name = session[:name]
    erb :welcome, :locals => {:name => student_name}
end

post '/snow' do
	session[:snow] = params[:snow]
	redirect '/final'
end

get '/final' do
	snow = session[:snow]
	student_name = session[:name]
	erb :final, :locals => {:snow => snow, :name => student_name}
end


