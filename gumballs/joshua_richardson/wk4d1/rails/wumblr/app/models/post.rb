class Post < ActiveRecord::Base

  # validates :name, prescence => true
  # validates :name, :length { :minimum => 3 }
  # validates :name, :length => { :in => 2..5, :message "I love" }
  validates :name, length: { in: 2..5 }
  # # validates :name, length => { :is => 2 }

  # validates :name, :numericality => true
  # validates :name, :numericality => { :only_integer => true }

  # validates :name, :uniqueness => true

  # validates :name, :inclusion => ['lunch','breakfast','dinner']
  # validates :name, :exclusion => %(lunch breakfast dinner)

  # validates :name, :format => { :with => // }
end
