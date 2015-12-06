require 'bundler'
require "./models/model.rb"
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/essay' do
    e = InitInfo.new(params[:name])
    e.length = params[:length]
    e.topic = params[:topic]
    e.college = params[:college]


  end

end