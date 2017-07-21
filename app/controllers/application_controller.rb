require './config/environment'
require './app/models/pet_model'

class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    erb :index
  end
  
  get '/cat' do
    erb :cat
  end
  
  get '/largedog' do
    erb :largeDog
  end
  
  get 'smalldog' do
    erb :smallDog
end

  get '/bird' do
    erb :bird
  end
  
  get '/hamster' do
    erb :hamster
  end
  
  get '/fish' do
    erb :fish
  end

  get '/smalldog' do
    erb :smallDog
  end

  post '/' do
    @livingspace = params[:livingspace]
    @noise = params[:noise]
    @price = params[:price]
    @time = params[:time]
    average = ((@livingspace.to_i + @noise.to_i + @price.to_i + @time.to_i)/4).ceil
    if (average == 6)
      erb :largeDog
    elsif (average == 5)
      erb :smallDog
    elsif (average == 4)
      erb :cat
    elsif (average == 3)
      erb :bird
    elsif (average == 2)
      erb :hamster
    elsif (average == 1)
      erb :fish
    end
  end
end