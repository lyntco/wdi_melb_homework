class Post < ActiveRecord::Base
  # validates :name, :length => { :minimum => 3}
  # validates :name, :presence => true
  validates :name, :length => {:in => 2..5}

end
