class Recipe < ActiveRecord::Base
	belongs_to :book
	validates :name, :uniqueness => true
end
