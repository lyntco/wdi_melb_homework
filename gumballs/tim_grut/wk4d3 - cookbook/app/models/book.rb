class Book < ActiveRecord::Base
  has_many :recipes :ingredients

end
