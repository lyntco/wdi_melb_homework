class Book < ActiveRecord::Base
	has_many :recipes
	validates :title, :uniqueness => true
end
