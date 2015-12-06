require 'bundler'
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end
  
  post '/essay' do
    params[:length]
    params[:topic]
    params[:name]
    
  end
  
end