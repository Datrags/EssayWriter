require 'bundler'
require "./models/model.rb"
Bundler.require

class MyApp < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/essay' do
    @e = InitInfo.new(params[:name].capitalize)
    #e.length = params[:length]
    @e.state = params[:state]
    @e.com = params[:com]
    @e.soda = params[:soda]
    @e.game = params[:game]
    @e.friend= params[:friend].capitalize

    erb :essay
  end

end