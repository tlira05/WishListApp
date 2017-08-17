# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
p1 = Post.create(item: "Xbox One X", rank: 3)
p2 = Post.create(item: "Nintendo", rank: 2)
p3 = Post.create(item: "Playstation Pro", rank: 1)