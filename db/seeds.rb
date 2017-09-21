# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(user_name: "fury", 
    email: "n.fury@shield.org",
    password: "foobar",
    password_confirmation: "foobar",
    user_color: "#9597a0")

user2 = User.create!(user_name: "ironman", 
    email: "ironman@avengers.org",
    password: "foobar",
    password_confirmation: "foobar",
    user_color: "#ff4d3d")

user3 = User.create!(user_name: "captain", 
    email: "captain@avengers.org",
    password: "foobar",
    password_confirmation: "foobar",
    user_color: "#566ef7")

user4 = User.create!(user_name: "blackwidow", 
    email: "blackwidow@avengers.org",
    password: "foobar",
    password_confirmation: "foobar",
    user_color: "#58e855")

user5 = User.create!(user_name: "thor", 
    email: "thor@avengers.org",
    password: "foobar",
    password_confirmation: "foobar",
    user_color: "#55d1e8")

# users = User.order(:created_at).take(5)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_4412.JPG'))

user1.posts.create!(image: img,
    caption: "abc",
    location: "abc",
    blog: "abc",
    created_at: Time.zone.now - 10.minutes)

