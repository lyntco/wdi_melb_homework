# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create name: 'rob1', password: 'test'

Category.create name: 'little stuff'
Category.create name: 'bargains'

c3 = Category.create name: 'cool stuffs'

Product.create name: 'stick', category_id: c3.id
