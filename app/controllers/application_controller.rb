require './config/environment'
require './app/models/fitness_model'


class ApplicationController < Sinatra::Base
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    return erb :index
  end
  
  get '/fitness' do
    return erb :fitness_index
  end
  
  get '/diet' do
    return erb :diet_index
  end
  
  post '/fitness_results' do
    points_array = params.values
    total = 0
    points_array.each do |point|
      total += point.to_i
    end 
    
    puts total
    result = calculate_result(total)
    if result == "Cardio"
      return erb :cardio
    elsif result == "power"
      return erb :power_lift
    else 
      return erb :HIIT
    end
  end
  
  post '/diet_results' do
    if params["meat"] =="Vegeterian"
      return erb :vegetarian
     elsif params["meat"] =="Vegan"
      return erb :vegan
    elsif params["meat"] =="High Protein"
      return erb :highprotein 
    else
      return erb:glutenfree
      
    end
  end
  
end