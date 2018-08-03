require './config/environment'
require './app/models/sample_model'

class ApplicationController < Sinatra::Base
 configure do
   set :public_folder, 'public'
   set :views, 'app/views'
 end

 get '/' do
   return erb :index
 end
 

 #puts total
 
 
 if result == veg
   return erb : vegeterian
   elsif result == glut
     return erb :glutenfree
   elsif result == vegan
     return erb :vegan
   elsif result == prot
     return erb :highprotein
     
 end
 
end
end