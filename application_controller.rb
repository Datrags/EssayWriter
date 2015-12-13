require 'bundler'
require "./models/model.rb"
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/essay' do
    @e = InitInfo.new(params[:name])
    #e.length = params[:length]
    @e.state = params[:state]
    @e.com = params[:com]
    @e.soda = params[:soda]
    @e.mlg = params[:mlg]
    @e.game = params[:game]
    @e.friend= params[:friend]

    erb :essay
  end

end