# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user1 = User.create!(user_name: "alexbrave", 
    email: "ab@gmail.com",
    password: "foobar",
    password_confirmation: "foobar",
    user_color: "#9597a0")

user2 = User.create!(user_name: "cassiedenton", 
    email: "cd@gmail.com",
    password: "foobar",
    password_confirmation: "foobar",
    user_color: "#ff4d3d")

user3 = User.create!(user_name: "eleanorfast", 
    email: "ef@gmail.com",
    password: "foobar",
    password_confirmation: "foobar",
    user_color: "#566ef7")

user4 = User.create!(user_name: "gregharvey", 
    email: "gh@gmail.com",
    password: "foobar",
    password_confirmation: "foobar",
    user_color: "#58e855")

user5 = User.create!(user_name: "isaacjames", 
    email: "ij@gmail.com",
    password: "foobar",
    password_confirmation: "foobar",
    user_color: "#55d1e8")

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_4726.JPG'))

user1.posts.create!(image: img,
    caption: "Highland coo",
    location: "Scotland",
    blog: "It wouldn't be a trip to the Scottish highlands with spotting a highland coo (cow). We were lucky enough to drive past a small herd of them in a paddock and stopped by to say hi.",
    created_at: Time.zone.now - 30.days)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_20170901_134127317_HDR.jpg'))

user2.posts.create!(image: img,
    caption: "Bikes!",
    location: "Random places in Sydney",
    blog: "These bikes randomly started appearing at Prince Alfred Park in the city one day and it turns out they are from two separate bike hire startups. The bikes can be hired through an app which tracks the location of each bike. The great thing is that bikes don't have to be returned to a bike docker, they can just be left where they are (in a reasonable location). Should be interesting to see how it goes as overseas experience has shown bikes being stuck up trees and dumped on the street. Admittedly not sure if those bikes were left there for real or for instagram stardom.",
    created_at: Time.zone.now - 20.days)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_6660.JPG'))

user3.posts.create!(image: img,
    caption: "Picture perfect sunset",
    location: "Killarney, Ireland",
    blog: "The prefect end to an otherwise cold, wet and windy day. This was the day we drove around the Ring of Kerry, taking in the south-west corner of Ireland and we would have loved to have had sunny weather. Unfortunately this was the one day the clouds blanketed the sky and sank down so low we could barely see infront of us as we headed up through the mountains. Made for an especially eerie drive, like something in a ghost movie where you half expect something to pop out through the fog. But just as we were heading back into town as the sun was setting, the clouds parted and we managed to make it down to the lake to snap a golden sunset.",
    created_at: Time.zone.now - 15.days)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_4412.JPG'))

user1.posts.create!(image: img,
    caption: "Vegetarian food that's filling",
    location: "Graze on Grassmarket, Edinburgh",
    blog: "A tiny little place that packs a punch. Discovered this beauty just wandering around on my first afternoon. It's vegetarian (vegan options available) and they have a huge range of different salads, cooked/roasted vegies and grains. You pick your box size and then choose what you want. I had a little bit of as much as could fit in the box. It was great having a healthier option after all the fried fish and chips",
    created_at: Time.zone.now - 10.days)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_20170523_124156915.jpg'))
                
user4.posts.create!(image: img,
    caption: "Yummo, burger time!",
    location: "Near Victoria Station, London, England",
    blog: "Cannot for the life of me remember what the restaurant was called but I was hankering for a sandwich and this is what came out! Perfect! The chips were crispy and the fried chicken was delish. This was a newish restaurant so they were still experimenting with the menu. The restaurant was pretty big and the decor/atmosphere was very chic.",
    created_at: Time.zone.now - 5.days)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_5543.JPG'))
    
user4.posts.create!(image: img,
    caption: "Because Shakespeare",
    location: "The Globe Theatre, London, England",
    blog: "Twelfth Night was showing. I'd never read/seen this play so it was a new experience. They had modernised it a bit and I saw it on one of their first press night performances. It was a blast, the performers were really fantastic and full of energy, really funny too. Could have stood in the 'mosh pit' but it was worth paying more for a seat higher up. The Globe had an interesting exhibition and I'd recommend the guided tour too.",
    created_at: Time.zone.now - 2.days)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_5272.JPG'))

user5.posts.create!(image: img,
    caption: "On the march",
    location: "London, England",
    blog: "The troops were out both for the changing of the guards and later on, practicing for the trooping of the colour. It was amazing seeing them up close practicing their formations and being a warm summer's day, the crowds were out in force. The poor police had their hands full trying to keep tourists off the road so the guards had a clear path. Considering everyone was in t-shirts, these guys (and gals) really must have been baking under all those layers. A few of them actually fainted so there was an ambo tucked out of sight near their main marching/parade ground.",
    created_at: Time.zone.now - 1.day)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_7124.JPG'))

user2.posts.create!(image: img,
    caption: "Punting",
    location: "Oxforrd",
    blog: "Students and tourists were punting along the river which looked fun. Had been on one in Cambridge where the river was bigger, here the river is quite narrow and this group almost crashed into each other. It's no easy task for the driver!",
    created_at: Time.zone.now - 12.hours)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_5112.JPG'))

user3.posts.create!(image: img,
    caption: "Serenity",
    location: "Lake District, England",
    blog: "I think this was Bassenthwaite Lake which is the largest body of water in the lake district (and the only one actually called 'lake', all the others are called 'water'). Being a very green and watery area meant that we had some cloud cover which added some atmosphere. We were actually very lucky as it only rained on the last day. But this was a fantastic trip through the lake district. ",
    created_at: Time.zone.now - 9.hours)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_4827.JPG'))

user2.posts.create!(image: img,
    caption: "Baaaaaaaaaaaa",
    location: "Keswick, Lake District, England",
    blog: "This was a beautiful little town next to a lake and surrounded by fields. There were sheep roaming these fields and we could get quite close to them. A whole herd of lambs were also nearby bounding back and forth!",
    created_at: Time.zone.now - 6.hours)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_20170805_124456580.jpg'))

user2.posts.create!(image: img,
    caption: "Brunch",
    location: "Circa Expresso, Parramatta, Sydney",
    blog: "This is their most popular if not signature dish - Ottoman Eggs - poached free range eggs with crumbed eggplant, garlic labneh, burnt chilli and sage butter. Great (and very popular place). Came on a saturday morning for brunch and we ended up waiting up to an hour for a table. Worth it!",
    created_at: Time.zone.now - 40.minutes)