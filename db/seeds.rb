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
    user_color: "#F4E957")

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
    blog: "It wouldn't be a trip to the Scottish highlands without spotting a highland coo (cow). We were lucky enough to drive past a small herd of them in a paddock and swung back around to stop by and say hi. \n\n Wasn't quite as exciting as the last time when a herd of them wandered onto the road and we had to stop and wait for them to move on, but it was cute seeing the baby highland cows. They were pretty nonplussed as we snapped photos of them and another car stopped to take some photos too.",
    created_at: Time.zone.now - 45.days)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_20170901_134127317_HDR.jpg'))
    
user2.posts.create!(image: img,
    caption: "Bikes!",
    location: "Random places in Sydney",
    blog: "These bikes randomly started appearing at Prince Alfred Park in the city one day and it turns out they were from two separate bike hire startups. The bikes can be hired through an app which tracks the location of each bike. The great thing is that bikes don't have to be returned to a bike docker, they can just be left where they are (in a reasonable location where bikes can be parked). More and more of them have started appearing, usually around the public pool area.\n \nA few have started popping up in my own suburb. Sydney with its busy and not-so-flat roads is not the most bike friendly place but it's a great idea to get more people cycling. Not having to dock it is particularly useful. I tried out the bikes in London and sometimes I'd reach a docking station with a few minutes to spare only to find the docking station full! The options were then to cycle to another station or wait and hope someone came to rent a bike. Even with a docking station app you'd sometimes end up cycling a bit further just to find a place to dock. \n\nShould be interesting to see how it goes as overseas experience has shown bikes being stuck up trees and dumped on the street. Admittedly not sure if those bikes were left there for real or for instagram stardom.",
    created_at: Time.zone.now - 30.days)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_4643.JPG'))

user4.posts.create!(image: img,
    caption: "Searching for the Loch Ness Monster",
    location: "Fort Augustus Locks, Scotland",
    blog: "A view of the locks (part of the Caledonian Canal) which is a passage in Loch Ness that allow ships to travel between the east and west. It was interesting watching the ships pass through this and slowly move up or down the locks/steps. Beautiful weather on this summer's day, great little town. It's a popular tourist location and a lot of the cruises start from this point. After spending some time watching boats go past we wnet on a cruise of Loch Ness where we learnt about the history of the area and searched for Nessie. Sadly she was a little camera shy and refused to surface until we'd all put our phones and cameras away.",
    created_at: Time.zone.now - 25.days)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_6660.JPG'))

user3.posts.create!(image: img,
    caption: "Picture perfect sunset",
    location: "Killarney, Ireland",
    blog: "The prefect end to an otherwise cold, wet and windy day. This was the day we drove around the Ring of Kerry, taking in the south-west corner of Ireland. Although the weather was frankly terrible, I loved this corner of Ireland, there's a reason why everyone I knew recommended taking a day (at least) to drive the ring. There was so much to see you could take a few days to do it properly. The roads off the main ring are very narrow and steep in some parts so it was definitely a fun drive! it is a breath-taking and beautiful part of the world and Killarney was a relaxing little town, my favourite place to stay in Ireland. \n\nIt's also very very green for a reason. Unfortunately this was the one day the clouds blanketed the sky and sank down so low we could barely see infront of us as we headed up through the mountains. Driving through the fog in the desolate mountain area made for an especially eerie drive, like something in a horror/spooky movie where you half expect something to pop out through the fog.\n \n But just as we were heading back into town at the end of the day, the clouds parted and we managed to make it down to the lake to snap a golden sunset. A few other professionals with tripods also had the same idea as us and set up near the castle. Beautiful and tranquil.",
    created_at: Time.zone.now - 15.days)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_4412.JPG'))

user1.posts.create!(image: img,
    caption: "Vegetarian food that's filling",
    location: "Graze on Grassmarket, Edinburgh",
    blog: "A tiny little place that packs a punch. Discovered this beauty just wandering around on my first afternoon in Edinburgh. I was too late but came back for lunch the next day. It's vegetarian (vegan options available) and they have a huge range of different salads, cooked/roasted vegies and grains. You're definitely spoilt for choice. The menu changes according to the season. You pick your box size and then choose what you want. Everything looked so delicious that I had a little bit of as much as could fit in the box. It was great having a healthier option to balance all the pizza, pies and fish and chips. But of course, there's a great ice-cream shop next door for dessert!\n\n Lots of people come for takeaway but there are a few seats avalailable. I was tempted to sit outside in the 'mall' area where there were people and stalls and a performer but as it was drizzling on and off and I really wanted a seat (after a LOT of walking), I opted to sit inside.'",
    created_at: Time.zone.now - 10.days)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_20170523_124156915.jpg'))
                
user4.posts.create!(image: img,
    caption: "Burger time!",
    location: "Near Victoria Station, London, England",
    blog: "Cannot for the life of me remember what the restaurant was called but I was hankering for a sandwich and this is what came out! Perfect! The chips were crispy and the fried chicken burger was delish. This was a newish restaurant so they were still experimenting with the menu. It was recommended by my friend but it wasn't at all like what she had ordered last time so I think they took on some feedback and made the sandwich a burger. The restaurant was pretty big and the decor/atmosphere was very chic. It was in an area surrounded by pretty new office blocks (and a lot of construction) so there were a lot of office workers there. Pretty nice place.",
    created_at: Time.zone.now - 5.days)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_5543.JPG'))
    
user4.posts.create!(image: img,
    caption: "Because Shakespeare",
    location: "The Globe Theatre, London, England",
    blog: "Twelfth Night was showing. I'd never read/seen this play so it was a new experience. Actually I probably hadn't seen a stage play since school either. To be honest I pretty much hated Shakespeare in school. The English was weird and reading it was a chore. Plays are meant to be seen not read! It's like reading a movie script which is a totally different experience to watching the movie. But since then I've grown an appreciation for Shakespeare (even if I'm still a complete noob at it). Particularly now, I've been joining in on #ShakespeareSunday each week which is run by <a href=\"https://twitter.com/hollowcrownfans\">@hollowcrownfans</a>. \n\nSo I was adamant there was no way I was going to miss seeing a play at The Globe Theatre. They had modernised it and I saw it on one of their first press night performances. It was a blast, the performers were fantastic and full of energy, really funny too. It was a great atmosphere and the sun was still up when the play started. I could have stood in the 'mosh pit' but it was worth paying more for a seat higher up. The Globe had an interesting exhibition as well and I'd recommend the guided tour too. They had a talk on about the play before the performance which went over my head a little as I didn't know this play well (or really, at all).",
    created_at: Time.zone.now - 2.days)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_5272.JPG'))

user5.posts.create!(image: img,
    caption: "On the march",
    location: "London, England",
    blog: "The troops were out both for the changing of the guards and later on, practicing for the trooping of the colour. It was amazing seeing them up close practicing their formations and being a warm summer's day, the crowds were out in force. The poor police had their hands full trying to keep tourists off the road so the guards had a clear path. Some people just don't listen! Considering everyone was in t-shirts, these guys (and gals) really must have been baking under all those layers. A few of them actually fainted so there was an ambo tucked out of sight near their main marching/parade ground ferrying soldiers to the ambulance van. The horses had to stand for the practice and one got a bit jittery causing the soldier to fall off. Thankfully nobody (horse or soldier) was injured. \n\n The different regiments have different uniforms and I ran into some different groups unexpectedly as they marched from their barracks to the main parade ground. Due to the terrorist attacks that occurred around this time, there was a heavy police presence, especially since this is such a tourist attraction.",
    created_at: Time.zone.now - 1.day)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_7124.JPG'))

user2.posts.create!(image: img,
    caption: "Punting",
    location: "Oxford",
    blog: "Like the gondolas, one person pokes a stick along the river bed to push a boat along. Students and tourists were punting along the river which winds through Oxford, which looked quite fun. I had been on one in Cambridge which included a history of the colleges and where the river was wider. Here the river was quite narrow and this group almost crashed into each other after the photo was taken. It's no easy task for the punter! There was a bit of a current too so some skill was required to navigate against the flow and around the bends.",
    created_at: Time.zone.now - 12.hours)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_5112.JPG'))

user3.posts.create!(image: img,
    caption: "Serenity",
    location: "Lake District, England",
    blog: "I think this was Bassenthwaite Lake, which is the largest body of water in the lake district (and the only one actually called 'lake', all the others are called 'water'). Being a very green and watery area meant that we had some cloud cover which added some atmosphere. We were actually very lucky as it only rained on the last day. But this was a fantastic trip through the lake district. We made a lot of stops to not only take photos but go on 1+ hour walks through farmland, forests and fields. \n\n We even passed an area full of tents! It was a weekend walking challenge and groups had camped to start as early as possible. I'm definitely more of a parks, forests, mountains and lakes kinda person than a tropical beach kinda person so this was perfect. It was also fantastic to get away from the city for a while.",
    created_at: Time.zone.now - 9.hours)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_4827.JPG'))

user2.posts.create!(image: img,
    caption: "Baaaaaaaaaaaa",
    location: "Keswick, Lake District, England",
    blog: "This was a beautiful little town next to a lake and surrounded by fields. There were sheep roaming these fields and we could get quite close to them. These three obligingly stopped to pose for my photo before getting on with the important task of eating. A whole herd of lambs were also nearby bounding back and forth with energy (or possibly anxiety at the stranger entering their area). It was a beautiful walk around the lake and I only managed to walk about 15% of it before having to turn back as the sun was setting. Being up north in summer meant that the sun didn't set until close to 10pm! Definitely appreciated the long days as it meant I could do a lot more exploring.",
    created_at: Time.zone.now - 6.hours)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_20170805_124456580.jpg'))

user2.posts.create!(image: img,
    caption: "Brunch",
    location: "Circa Expresso, Parramatta, Sydney",
    blog: "This is their most popular if not signature dish - Ottoman Eggs - poached free range eggs with crumbed eggplant, garlic labneh, burnt chilli and sage butter. Great (and very popular place). Loved the combination of the fried eggplant and eggs. Came on a saturday morning for brunch and we ended up waiting up to an hour for a table. Worth it!",
    created_at: Time.zone.now - 40.minutes)

img = File.open(File.join(Rails.root, 'app/assets/images/IMG_20170607_082531902.jpg'))

user5.posts.create!(image: img,
    caption: "Even more bikes!",
    location: "Oxford Station, Oxford, England",
    blog: "Could barely believe it when I saw this outside Oxford Station, so many bikes! To be honest it reminded me of Asia where bikes are a more common form of transport. I knew Oxford was a very bike friendly place, particularly with all the students, but I still hadn't exepected to see so many bikes in one place. How do people remember which one is theirs?! A lot of people don't live in Oxford but commute in from the surrounding areas (as it can be quite expensive to live in Oxford) so I think people catch the train to and from outer towns and then cycle within Oxford itself.\n\nThere were definitely a lot of students and people in suits and what not cycling around. I would love to cycle around but Sydney's not as bike friendly. Several cyclists I know have gotten broken bones or pitched over cars.",
    created_at: Time.zone.now - 1.minute)