
require_relative '../../config/environment'
require 'pry'

class ApplicationController < Sinatra::Base

  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/posts/new' do
    erb :new
  end

  post '/posts' do

     @post = Post.create(params)
     binding.pry
     redirect to '/posts'
  end

  get '/posts' do
    #binding.pry
    'Hello World'
  end
end
