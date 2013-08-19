require 'sinatra'

class SingingRain < Sinatra::Base

  #set :static, true                             # set up static file routing
  #set :public, File.expand_path('..', __FILE__) # set up the static dir (with images/js/css inside)
  
  #set :views,  File.expand_path('../views', __FILE__) # set up the views dir
  #set :haml, { :format => :html5 }                    # if you use haml
  
  # Your "actions" go here…
  #
  get '/api/v1/users/:id' do
    user = User.find(params[:id])
    if user
      puts 'gwgwe'
      user.to_json
    else
      error 404, {:error => "user not found"}.to_json # :not_found
    end
  end
  
end

