# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Book.create(
#   title: "The Pragmatic Programmer:",
#   author: "Andrew Hunt, Dave Thomas",
#   description: "Illustrates the best practices and major pitfalls of many different aspects of software development",
#   image_url: "https://images-na.ssl-images-amazon.com/images/I/41BKx1AxQWL._SX396_BO1,204,203,200_.jpg",
#   publication_date: "10-30-1999",
#   price: 30.96)

CompetitionStructure.create!(description: "league")
CompetitionStructure.create!(description: "tournament")
CompetitionStructure.create!(description: "league and tournament playoff")
