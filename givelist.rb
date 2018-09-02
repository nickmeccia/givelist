require 'sinatra'
require 'sinatra/reloader'
require 'sass/plugin/rack'
require 'pry'

get 'public/styles/sass/*.scss' do
 binding.pry
 filename = params[:splat].first
 scss "../public/styles/sass/#{filename}".to_sym
end

get '/' do
 erb :index, :layout => :layout
end

get '/dashboard' do
 erb :dashboard, :layout => :layout
end

