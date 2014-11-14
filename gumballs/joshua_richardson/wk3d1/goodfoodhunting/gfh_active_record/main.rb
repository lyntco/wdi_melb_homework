require 'pry'
require 'sinatra'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter => 'postgresql',
  :host => 'localhost',
  :database => 'goodfoodhunting'
)

class Dish < ActiveRecord::Base # inherits from active record, the Base module


end

pry.binding