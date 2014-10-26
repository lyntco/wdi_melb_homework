class User < ActiveRecord::Base
  has_secure_password

  validates :name, :uniqueness => true
  validates_confirmation_of :password
end
