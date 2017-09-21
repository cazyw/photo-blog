# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(user_name: "fury", 
    email: "n.fury@shield.org",
    password: "foobar",
    password_confirmation: "foobar",
    user_color: "#9597a0")

User.create!(user_name: "ironman", 
    email: "ironman@avengers.org",
    password: "foobar",
    password_confirmation: "foobar",
    user_color: "#ff4d3d")

User.create!(user_name: "captain", 
    email: "captain@avengers.org",
    password: "foobar",
    password_confirmation: "foobar",
    user_color: "#566ef7")

User.create!(user_name: "blackwidow", 
    email: "blackwidow@avengers.org",
    password: "foobar",
    password_confirmation: "foobar",
    user_color: "#58e855")

User.create!(user_name: "thor", 
    email: "thor@avengers.org",
    password: "foobar",
    password_confirmation: "foobar",
    user_color: "#55d1e8")

users = User.order(:created_at).take(5)