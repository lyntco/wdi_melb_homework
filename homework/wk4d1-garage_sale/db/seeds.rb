# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Category.delete_all
Product.delete_all
User.delete_all

User.create name: 'dt', password: 'test'
Category.create name: 'stuff'
Category.create name: 'bargain'
cs = Category.create name: 'cool stuff'

Product.create name: 'stick', category_id: c3.id

#rake db:seed