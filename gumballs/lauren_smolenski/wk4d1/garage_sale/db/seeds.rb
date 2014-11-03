# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create username: 'lauren' , password: 'ilovecake'

Category.create name: 'stuff'
Category.create name: 'bargains'
c3 = Category.create name: 'cool stuff'

Product.create name: 'stick', category_id: c3.id