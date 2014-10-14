require 'pry'

class School
  attr_accessor :db

  def initialize(name, db = {})
    @name = name
    @db = db
  end

  def add(student, year)
    @db[year] ||= []
    @db[year] << student
  end

  def grade(year)
    @db[year]
  end

  def sort
    Hash[@db.sort]
  end

end


school = School.new("Haleakala Hippy School")

binding.pry


