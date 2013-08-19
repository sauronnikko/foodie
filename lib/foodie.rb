require "foodie/version"
require 'rubygems'
require 'typhoeus'
require 'active_record'
require 'sinatra'

require "foodie/food"
require "foodie/user"
require 'foodie/app'

# setting up our environment
env_index = ARGV.index("-e")
env_arg = ARGV[env_index + 1] if env_index
env = env_arg || ENV["SINATRA_ENV"] || "development"

# connecting to the database
#use ActiveRecord::ConnectionAdapters::ConnectionManagement # close connection to the DDBB properly...https://github.com/puma/puma/issues/59
databases = YAML.load_file("config/database.yml")
ActiveRecord::Base.establish_connection(databases[env])


module Foodie
	class Food
		def self.hello_2
			'gwgw'
		end
	end
  # Your code goes here...
end
