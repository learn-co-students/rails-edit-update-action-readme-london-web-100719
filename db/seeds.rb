# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts 'clears database'

Article.all.destroy_all

puts 'seeds database'

Article.create(title: "First Article", description: "A lot to read")
Article.create(title: "Second Article", description: "More to read")
Article.create(title: "Third Article", description: "Much more to read")

puts 'done'