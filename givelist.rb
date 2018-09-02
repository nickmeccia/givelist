require 'sinatra'
require 'sinatra/reloader'
require 'sass/plugin/rack'

get '/styles/*.scss' do
 # binding.pry
 filename = params[:splat].first
 scss "/styles/#{filename}".to_sym
end

get '/' do
 erb :index, :layout => :layout
end

get '/dashboard' do
 erb :dashboard, :layout => :layout
end

