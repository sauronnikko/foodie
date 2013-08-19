require 'sinatra'

# get a user by name


class User < ActiveRecord::Base


  validates_presence_of :username
  

  
  
  def hola_user
    'hola user'
  end

end
