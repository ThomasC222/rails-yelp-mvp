# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "destroying"
Restaurant.destroy_all
puts "destroyed"
puts "creating seeds"
monsieur = Restaurant.new(name: 'Monsieur Machin', address: 'Nantes', category: 'french')
monsieur.save
ardoise = Restaurant.new(name: "L'ardoise", address: 'Nantes', category: 'french')
ardoise.save
maronnier = Restaurant.new(name: 'Les filles du marronier', address: 'Nantes', category: 'italian')
maronnier.save
deuxtours = Restaurant.new(name: "Les deux tours d'argent", address: 'Mordor', category: 'japanese')
deuxtours.save
elm = Restaurant.new(name: "Le gouffre d'Elm", address: 'Nantes', category: 'belgian')
elm.save
yummy = Review.new(content: "yummy yummy", rating: 4)
yummy.restaurant = monsieur

yummy2 = Review.new(content: "yummyyy yummyyyyyyYYYy", rating: 2)
yummy2.restaurant = maronnier
puts "seeds creates"
