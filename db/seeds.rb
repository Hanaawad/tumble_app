require "date"

p "cleaning database"
Booking.delete_all
Review.delete_all
User.delete_all
Photo.delete_all
Activity.delete_all
Category.delete_all

p "creating 10 detailed users"
p "user 1"
five_users = []
nic = User.new(name: "Nicolas", surname: "Feer", email: "nic@gmail.com", password: "nic12345",
  age: 19, location: "628 Wilson St.
Brooklyn, NY 11238", phone:"+4523451026", description: "Hi I'm Nic. I'm currently on my gap year before starting uni at Masstricht in Sep.
  I love karaoke and gaming!")
nic.remote_photo_url = "https://i.imgur.com/FYloZCSs.png"
nic.save!
five_users << nic
p "user 2"
chris = User.new(name: "Christian", surname: "Soelling", email: "chris@gmail.com", password: "chris12345",
  age: 18, location: "8 Smith Store Dr.
Astoria, NY 11105", phone:"+4560735698", description: "Im Chris, originally from Sydney. I love Fifa and traveling!")
chris.remote_photo_url = "https://i.imgur.com/utZQmi6s.png"
chris.save!
five_users << chris
p "user 3"
lucas = User.new(name: "Lucas", surname: "Cheung", email: "lucas@gmail.com", password: "lucas12345",
  age: 17, phone:"+447428512818", location: "71 Greenrose Lane
Jamestown, NY 14701", description: "Love climbing, basketball and asian food :)")
lucas.remote_photo_url = "https://i.imgur.com/PP0iLGYs.png"
lucas.save!
five_users << lucas
p "user 4"
hana = User.new(name: "Hana", surname: "Awad", email: "hana@gmail.com", password: "hana12345",
  age: 19, phone:"+4593839046", location: "7181 James St.
Buffalo, NY 14215", description: "Hi! I love cooking and doing all sorts of sports, especially surfing!")
hana.remote_photo_url = "https://i.imgur.com/aEctbqGs.jpg"
hana.save!
five_users << hana
p "user 5"
max = User.new(name: "Max", surname: "Glasmacher", email: "max@gmail.com", password: "max12345",
  age: 18, location: "9104 St Margarets St.
Brentwood, NY 11717", phone:"+4915223602341", description: "Yoo! Surfing, basketball and traveling is ma life!!!")
max.remote_photo_url = "https://i.imgur.com/s2xRA1Zs.jpg"
max.save!
p "user 6"
amanda = User.new(name: "Amanda", surname: "Schjørmann", email: "amanda@gmail.com", password: "amanda12345",
  age: 18, location: "430 Hamilton Street
Bronx, NY 10466", phone: "+4541432080", description: "Heya! I always love skydiving and finding new cool bars!")
amanda.remote_photo_url = "https://i.imgur.com/0dhCekOs.png"
amanda.save!
five_users << amanda
p "user 7"
irene = User.new(name: "Irene", surname: "Jona Smith", email: "irene@gmail.com", password: "irene12345",
  age: 19, location: "572 Wagon St.
Bronx, NY 10473", description: "Hii! Really into coding, climbing and rugby!")
irene.remote_photo_url = "https://i.imgur.com/op2Ajpas.png"
irene.save!
p "user 8"
mohamed = User.new(name: "Mohamed", surname: "Zaki", email: "mohamed@gmail.com", password: "mohamed12345",
  age: 21, location: "85 Carriage Avenue
Brooklyn, NY 11214", description: "Yoyo whatsup! Im a Microsoft intern traveling the world!
  I love cooking, catan and going on crazy adventures!")
mohamed.remote_photo_url = "https://i.imgur.com/smiuaRgs.png"
mohamed.save!
p "user 9"
ana = User.new(name: "Ana", surname: "Ivan", email: "ana@gmail.com", password: "ana12345",
  age: 19, location: "585 E. Marconi Dr.
Flushing, NY 11355", description: "Hihi! Currently travlin the world before becoming a professional snooker player
  next year! I loove food and new cultures!")
ana.remote_photo_url = "https://i.imgur.com/RBAjoQrs.png"
ana.save!
p "user 10"
andre = User.new(name: "Andre", surname: "Orvalho", email: "andre@gmail.com", password: "andre12345",
  age: 19, location: "248 Fairfield Street
New York, NY 10040", description: "Hihi! gyming, skating and surfing are liiiit!!")
andre.remote_photo_url = "https://i.imgur.com/buNKsUzs.png"
andre.save!
p "creating 10 remaining users"
p "user 11"
konsti = User.new(name: "Konstantin", surname: "Pörschke", email: "konsti@gmail.com", password: "konsti12345",
  age: 18, location: "52 Glen Eagles Street
New York, NY 10027")
konsti.remote_photo_url = "https://i.imgur.com/V7KAkkIs.png"
konsti.save!
p "user 12"
victor = User.new(name: "Victor", surname: "Castell", email: "victor@gmail.com", password: "victor12345",
  age: 19, location: "8494 Center St.
Fairport, NY 14450")
victor.remote_photo_url = "https://i.imgur.com/YJMfJhns.png"
victor.save!
p "user 13"
carl = User.new(name: "Carl", surname: "Berger", email: "carl@gmail.com", password: "carl12345",
  age: 19, location: "874 Whitemarsh Drive
Bronx, NY 10460")
carl.remote_photo_url = "https://i.imgur.com/3tP4jE9s.png"
carl.save!
p "user 14"
nelly = User.new(name: "Nelly", surname: "Glasmacher", email: "nelly@gmail.com", password: "nelly12345",
  age: 20, location: "8996 Purple Finch Rd.
Flushing, NY 11354")
nelly.remote_photo_url = "https://i.imgur.com/40VUabls.png"
nelly.save!
p "user 15"
pablo = User.new(name: "Pablo", surname: "Ninos", email: "pablo@gmail.com", password: "pablo12345",
  age: 19, location: "47 Ridgeview St.
New York, NY 10023")
pablo.remote_photo_url = "https://i.imgur.com/5G0gtuJs.png"
pablo.save!
p "user 16"
iggnazio = User.new(name: "Iggnazio", surname: "Stigmoller", email: "iggnazio@gmail.com", password: "iggnazio12345",
  age: 18, location: "8692 Miles Street
Brooklyn, NY 11223")
iggnazio.remote_photo_url = "https://i.imgur.com/WnATBdHs.png"
iggnazio.save!
p "user 17"
leesa = User.new(name: "Leesa", surname: "Tatis", email: "leesa@gmail.com", password: "leesa12345",
  age: 19, location: "7519 North Crescent Lane
Bronx, NY 10472")
leesa.remote_photo_url = "https://i.imgur.com/DKO2s8Qs.png"
leesa.save!
p "user 18"
hugo = User.new(name: "Hugo", surname: "de Saint Chaffray", email: "hugo@gmail.com", password: "hugo12345",
  age: 20, location: "9713 North South St.
Bronx, NY 10456")
hugo.remote_photo_url = "https://i.imgur.com/Ed1xjLks.png"
hugo.save!
p "user 19"
sofia = User.new(name: "Sofia", surname: "Underwood", email: "sofia@gmail.com", password: "sofia12345",
  age: 19, location: "922 Linden Lane
Lindenhurst, NY 11757")
sofia.remote_photo_url = "https://i.imgur.com/2N3C5GFs.png"
sofia.save!
p "user 20"
eva = User.new(name: "Eva", surname: "Bourson", email: "eva@gmail.com", password: "eva12345",
  age: 19, location: "51 Buttonwood St.
Elmont, NY 11003")
eva.remote_photo_url = "https://i.imgur.com/ESaXlDos.png"
eva.save!
p "done with users!"
p "creating 6 categories"
indoor = Category.new(name: "indoor")
indoor.font = 'fas fa-home'
indoor.save!
educational = Category.new(name: "educational")
educational.font = "fas fa-book"
educational.save!
extreme = Category.new(name: "extreme")
extreme.font = "fas fa-user-ninja"
extreme.save!
water = Category.new(name: "water")
water.font = "fas fa-water"
water.save!
nature = Category.new(name: "nature")
nature.font = "fas fa-leaf"
nature.save!
social = Category.new(name: "social")
social.font = "fas fa-user-friends"
social.save!
p "Creating 15 activities"
p "act 1"

photos =["https://images.unsplash.com/photo-1508166466920-f65aa51f727c?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2250&q=80",
  "https://images.unsplash.com/photo-1512675628397-28288d1220ef?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60",
"https://images.unsplash.com/photo-1512972103000-66ab71f7a228?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60",
"https://images.unsplash.com/photo-1543727363-77916b8189e9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
"https://images.unsplash.com/photo-1543163300-3566d6a3fab0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"]
act1 = Activity.new(name: "White Water Rafting", location: "Jl. Raya Kintamani",
  description: "Get the experience of a lifetime during your trip to Bali by trying out white water rafting at the stunning Ayung River, the longest river on the island. Marvel at the river's gorgeous surroundings, including lush rainforests, gorgeous waterfalls, and beautiful gorges! Enjoy a convenient pick up at your hotel, then travel comfortably to the rafting starting point inside an air-conditioned vehicle. Once you arrive, you'll change into your rafting clothes and equipment and be briefed by the professional guides about the proper rafting techniques and safety rules.
  Set off on your exhilarating rafting adventure, which lasts for a bit over an hour, and feel the cool water splashing on your skin as you make your way to the finish line. Rest and recharge with a delicious buffet meal that features a variety of fresh, local dishes, before you shower and start to head back to your hotel. This is a fun, friendly activity
   that all thrillseekers should try at least once during their visit to Bali!", price: 150,
  start_date: Time.new(2019, 03, 20, 10, 15), end_date:
  Time.new(2019, 03, 20, 12, 15), activation_date: Time.new(2019, 03, 12, 11, 15),
  min_limit: 6, max_limit: 10)
act1.category = water

act1.save!
photos.each do |url|
  photo = Photo.new
  photo.remote_photo_url = url
  photo.activity = act1
  photo.save!

end
act1.save!
p "Creating 5 bookings for act 1"
five_users.each do |user|
  b = Booking.new
  b.user = user
  b.activity = act1
  b.save!
end

p "review 1"
r1 = Review.new(description: "Rafting is super awsome! The view on Bali
  was simply stunning!!", rating: 4)
r1.activity = act1
r1.user = max
r1.save!
p "act 2"
photos =["http://baliquadbiking.com/wp-content/uploads/2018/09/bali-quad-bike-on-the-beach.jpg",
"https://cdn.getyourguide.com/img/tour_img-774883-145.jpg",
"https://cdn.getyourguide.com/img/tour_img-774895-145.jpg",
"http://baligreenlineadventure.com/wp-content/uploads/2018/02/ATV-2.jpg",
"https://cdn.getyourguide.com/img/tour_img-478959-145.jpg"]
act2 = Activity.new(name: "ATV Quad Bike Adventure ", location: "Central Batur, Kintamani",
  description: "
Explore this tropical paradise as you discover its varied landscapes, lush rice paddies,
 overgrown jungles and rushing rivers on a two hour ATV Quad bike adventure. Experience a
 convenient pick up at your accommodation, and whether you take a morning, afternoon or
 early evening ride, you will be given a thorough safety briefing and all the equipment
  needed for a safe journey. Choose to either ride in tandem with a companion or drive your
  own buggy each - either way, you'll be treated to a spectacular sight of Bali's natural beauty as you
  drive through and around the extensive track. If you're up for a bit more thrill, just let your guide
  know and he'll take you to a more technical terrain where you can make your way up steep hills on full
   speed or slide down slopes as you please. After an exciting ride,
freshen up with a relaxing shower before feasting on a buffet meal of scrumptious food. .", price: 50,
  start_date: Time.new(2019, 03, 19, 11, 25), end_date:
  Time.new(2019, 03, 19, 13, 15), activation_date: Time.new(2019, 03, 12, 14, 15),
  min_limit: 15, max_limit: 20)
act2.category = extreme
act2.save!
photos.each do |url|
  photo = Photo.new
  photo.remote_photo_url = url
  photo.activity = act2
  photo.save!
end
p "review 2"
r2 = Review.new(description: "A great way to see some of Bali's treasures!", rating: 5)
r2.activity = act2
r2.user = max
r2.save!
p "act 3"
photos =["https://www.uniqueretreats.com/wp-content/uploads/2018/04/radiantly-alive.jpg",
"https://cdn.citynomads.com/wp-content/uploads/2016/09/29004402/Bali-Yoga-and-Meditation-retreats.jpg",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSAFdoPmKsTxGe2SRDPMYZplq4hYE0wRMd3El_Afh5VIC2rJBaeOw",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTAr0v9KvwE6rqObf35tLfWMdRiCT49PRwg1hHpcLJrcyRJp5TE9w",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-ONgFZWXr5iUfcQSm7Qf4Vkb6Jh-noktUxi70wGIygfQk9C97"]
act3 = Activity.new(name: "Yoga", location: " Kedewatan, Ubud",
  description: "Are you ready to take your Yoga practice to the next level? Are you looking for
  a meaningful way of contributing to our society? Then it may be time to now step
   forward and start sharing your passion for Yoga with your friends and your community.With Akasha
   Yoga we offer a space for
    integral evolution, and invite you to journey with us towards the very roots of classical Yoga.
    We believe that a solid self-practice, a substantial anatomical, philosophical and spiritual understanding of
    Yoga, and the passion for what we do, are the keys to being a successful Yoga instructor. Our extensive
     experience of coaching Yoga teachers enables us to select empowering methods that quickly turn
     aspirants into confident instructors.
The comprehensive curriculum of our 200-hour intensive course is approved and certified by the renowned
international Yoga Alliance. Our Teacher Training is a heartfelt invitation to turn your passion into a meaningful profession.", price: 450,
  start_date: Time.new(2019, 03, 10, 12, 30), end_date:
  Time.new(2019, 04, 19, 14, 30), activation_date: Time.new(2019, 03, 17, 12, 15),
  min_limit: 10, max_limit: 15)
act3.category = indoor
act3.save!
photos.each do |url|
  photo = Photo.new
  photo.remote_photo_url = url
  photo.activity = act3
  photo.save!
end
p "review 3"
r3 = Review.new(description: "Hmmm, nothing more relaxing", rating: 4)
r3.activity = act3
r3.user = max
r3.save!
p "act 4"
photos = [
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS12H2TI-jC_KdSVpnXmTnCvnMHjGC2VoKa9Jh_XAlqsWpfIRVLew",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDVMj8zVdYAF8_c-ghLv63Y6aW3MhNyyVEYegyzjXLIFmM9atx",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQatcV1vqupO2LkRCy_Mt0vxGxQXU7z4_VHbiAFmw51fawFRAP-Ow",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTtcHesnqjcV8-Xu0881F74-w2ztWPOG29xBf15_hcDkoR9PAkp",
"https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTBeoerc0xkI6I7aaOCcnhJuLJCWkGURbA0ae2X-pgsf7BN3q0ytQ"]
act4 = Activity.new(name: "Scuba Dive", location: "Dewi Saraswati",
  description: "Descend to one of the famous diving spots in Bali and explore the
   underworld beauty around the sunken USS Liberty. Already visible from the surface
    on a clear day, the World War II era shipwreck is covered with diverse and colorful
    corals and has become a home to a number of unique underwater species like Ghost Pipe
    Fish and Pygmy Seahorses. Swimming with the abundant marine life through the wide holes
    and twisted metal bars will give you an underworld experience similar to Hollywood sci-fi
    films. For macro photography lovers, the contrasting colors of rusting metal posts and corals is an underwater haven! Only 50 meters away from the shore of Tulamben, this experience will last around 10 hours from pickup till drop off. The package includes lunch after your first dive, a freshen up shower in the open air shower facilities,
  and changing rooms before you are brought back to your accommodation before 6:00pm. ", price: 150,
  start_date: Time.new(2019, 04, 17, 11, 30), end_date:
  Time.new(2019, 04, 17, 13, 30), activation_date: Time.new(2019, 04, 9, 13, 30),
  min_limit: 11, max_limit: 13)
act4.category = water
act4.save!
photos.each do |url|
  photo = Photo.new
  photo.remote_photo_url = url
  photo.activity = act4
  photo.save!
end
p "review 4"
r4 = Review.new(description: "Great dive crew, safe, and very well priced.", rating: 4)
r4.activity = act4
r4.user = max
r4.save!
p "act 5"
photos=[
  "https://cdn.getyourguide.com/img/tour_img-1241350-145.jpg",
  "https://kotheexplorer.files.wordpress.com/2018/03/photo-27-02-2018-2-08-39-pm.jpg?w=1000",
  "https://cdn.getyourguide.com/img/tour_img-1241392-145.jpg",
  "https://i.pinimg.com/originals/68/74/9b/68749b1d324f34ade130ce2191d86bcb.jpg",
"https://images.unsplash.com/photo-1521601823289-ebb7d48ec7eb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
"http://sowherearewe.com/wp-content/uploads/2018/01/IMG_9289-2.jpg"
]
act5 = Activity.new(name: "Northern Charm", location: "Jl. Kartika Plaza",
  description: "Bali is a living postcard, an Indonesian paradise that feels like a fantasy. This tour is designed for those who wish to visit all
  the most iconic and photogenic sites that you always see on postcards and instagram in the northern part of the islands.
  On top of snapping some Instagram-worthy pictures, you'll learn about the Balinese culture and history behind those sites and immerse yourself in the beauty of nature.

Your first stop early in the morning will be the iconic Lake Beratan where you will see the majestic temple sitting on a small island on the lake,
 just as you always see in the postcards of Bali. This lakeside temple was constructed in honor of Dewi Danu, goddess of
 the lake that was formed by a volcanic eruption 30,000 years ago. Your guide will also explain to you more of the history of this ancient temple as well as the Balinese people and their culture.


You will then visit the iconic Handara Gate, well known as the pathway to serenity.", price: 50,

  start_date: Time.new(2019, 04, 17, 11, 30), end_date:
  Time.new(2019, 04, 17, 13, 30), activation_date: Time.new(2019, 04, 9, 13, 30),
  min_limit: 8, max_limit: 20)
act5.category = social
act5.save!
photos.each do |url|
  photo = Photo.new
  photo.remote_photo_url = url
  photo.activity = act5
  photo.save!
end
p "act 6"
photos=["https://images.unsplash.com/photo-1509883236841-6601c2c660f7?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1932&q=80",
  "https://images.unsplash.com/photo-1440968872456-dec3196b9bee?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
  "https://wheresmollie.com/wp-content/uploads/2016/03/2Z4A0690-2.jpg",
  "https://d27k8xmh3cuzik.cloudfront.net/wp-content/uploads/2017/07/bali-hiking-guide.jpg",
"https://images.unsplash.com/photo-1508184782546-39f96de554aa?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=934&q=80"]
act6 = Activity.new(name: "Mount Batur Sunrise Trekking", location: "Jl. Raya Penelokan",
  description: "Hike up to the top of the picturesque Mount Batur (Kintamani Volcano) on a 10-hour sunrise trek and be rewarded with dramatic views of Bali’s mountainscapes as you munch on a delicious breakfast at the top. You probably won’t get a lot of sleep on the night of the tour — you will need to be ready in time for your 2am hotel pick up. Go through a short safety briefing before embarking on your Mount Batur Sunrise Trek. It will take you about three hours to get to the top and, once there, you will get to combine breathtaking views from the peak of Mount Batur with a delicious
   local breakfast. After, you will trek down the mountain and visit a beautiful coffee plantation along the way.", price: 150,
  start_date: Time.new(2019, 04, 15, 11, 30), end_date:
  Time.new(2019, 04, 15, 13, 30), activation_date: Time.new(2019, 04, 9, 13, 30),
  min_limit: 8, max_limit: 10)
act6.category = nature
act6.save!
photos.each do |url|
  photo = Photo.new
  photo.remote_photo_url = url
  photo.activity = act6
  photo.save!
end
p "act 7"
photos = ["https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1295,h_971,f_auto/w_80,x_15,y_15,g_south_west,l_klook_water/activities/zo6xivp4a0mvh0plioja/ElephantMudFunExperienceatBaliZoo.webp",

  "https://st2.depositphotos.com/6676792/12247/i/950/depositphotos_122475752-stock-photo-young-tourists-go-elephant-trekking.jpg",
"https://res.klook.com/images/fl_lossy.progressive,q_65/c_fill,w_1295,h_863,f_auto/w_80,x_15,y_15,g_south_west,l_klook_water/activities/qvkvbf5jnfx9su0albgk/LombokElephantParkTicket.webp",
"https://cdn.pixabay.com/photo/2017/06/07/10/47/elephant-2380009_1280.jpg"
]
act7 = Activity.new(name: "Elephant Park ", location: "Jl. Catur ",
  description: "Elephants are some of the most adorable animals on the planet despite their huge size. But instead of looking at these gentle giants from afar, isn’t it more exciting to interact with them? Visit Bali Zoo and have a one-of-a-kind experience with some elephants with their Elephant Mud Fun activity! You’ll have the chance to get down and dirty with these creatures and play with them in a pond full of mud! Once you’re done with this fun activity, you can also enjoy a couple of hours roaming around Bali Zoo and be in awe of the various animals under their care. Some of the animals you’ll get to see include an African lion, an Asian small-clawed otter,
   and more! At the end of the day, get to feast on a sumptuous meal with your loved ones at Sanctoo Villa!", price: 40,
  start_date: Time.new(2019, 04, 15, 11, 30), end_date:
  Time.new(2019, 04, 15, 13, 30), activation_date: Time.new(2019, 04, 9, 13, 30),
  min_limit: 9, max_limit: 16)
act7.category = social
act7.save!
photos.each do |url|
  photo = Photo.new
  photo.remote_photo_url = url
  photo.activity = act7
  photo.save!
end
p "act 8"
photos = ["https://images.unsplash.com/photo-1500520198921-6d4704f98092?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1825&q=80",
"https://images.unsplash.com/photo-1451943744133-d6335204a0a3?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=2689&q=80",
"https://images.unsplash.com/photo-1459745930869-b3d0d72c3cbb?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
"https://images.unsplash.com/photo-1499823382510-3990e4b8a04b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"]
act8 = Activity.new(name: "Bali Surf Lesson", location: "Pecatu, South Kuta",
  description: "When we talk about Lombok island, its crystal clear waters, white sand beaches,
  and rich marine life instantly come to mind. But the island paradise has a lot to offer, namely its natural wildlife.
   See its exotic animals at Lombok Elephant Park! Home to over 45 species of 195 animals,
    Lombok Elephant Park seeks to give visitors a chance to experience animals first-hand through their various attractions
     and experiences. Treat your whole family to an exciting wildlife adventure at the zoo, where the kids will meet all kinds
     of animals. For a memorable snap, have your photos taken while you interact with live parrots, elephants,
      and reptiles. Don't forget to capture every moment of your kids' delight as they handle exotic animals.
       A professionally trained staff will guide you throughout every experience, so don't worry and just enjoy!
       Extend the fun with a Breakfast Set at the zoo's restaurant,
   where elephants drop by frequently. Get tickets now for your next getaway!", price: 80,
  start_date: Time.new(2019, 04, 17, 22, 30), end_date:
  Time.new(2019, 04, 18, 5, 30), activation_date: Time.new(2019, 04, 12, 13, 30),
  min_limit: 9, max_limit: 16)
act8.category = educational
act8.save!
photos.each do |url|
  photo = Photo.new
  photo.remote_photo_url = url
  photo.activity = act8
  photo.save!
end
p "act 9"
photos = [
  "http://uluwatubalidriver.com/wp-content/uploads/2017/10/Bali-Bike-Tour-Landscape-001.jpg",
  "https://images.unsplash.com/photo-1520694571317-eab7d41c9851?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
]
act9 = Activity.new(name: "cycling", location: "Carangsari",
  description: "Cycling in Bali lets you experience the beautiful countryside of the island, as well as rural Balinese village life from up close.
   Pedalling through rugged terrain alongside volcanic rims, zooming downhill past ancient temples and plantations while greeting local farmers and
   schoolkids as you pass by, all add to an immersive experience – far better than your hotel gym! Here we’ve compiled all of the popular cycling
    spots around the island, covered by our great selection of exciting cycling activities available in Bali. Terrain and highlights vary: from biking
     at a leisurely pace through jungle villages in central Bali, to riding over undulating topography of hillside neighbourhoods, all of which reward
      you with breathtaking vistas usually inaccessible by car. Check out where to go in Bali for your next exhilarating cruise on two wheels.", price: 35,
  start_date: Time.new(2019, 04, 12, 10, 15), end_date:
  Time.new(2019, 04, 12, 12, 15), activation_date: Time.new(2019, 03, 25, 11, 15),
  min_limit: 8, max_limit: 10)
act9.category = extreme
act9.save!
photos.each do |url|
  photo = Photo.new
  photo.remote_photo_url = url
  photo.activity = act9
  photo.save!
end
p "act 10"
photos = ["https://cairnstours.net.au/wp-content/uploads/2018/03/Roofy-Drone.jpg","https://media.adrenaline-hunter.com/cache/activity_gallery_zoom_770x500/media/2018/03/2067cd3f577998df3555cd9876793eb4.jpeg"]
act10 = Activity.new(name: "Bungy Jump", location: "Jl. Raya ",
  description: "Thrill seekers and daredevils would not want to miss a chance to try out the exhilarating Human Slingshot and Bungy Jump
  rides at Sanook Park, Pattaya! Since 1989, Sanook Park has been satisfying the needs of adrenaline junkies with their 60m tall bungy
   jump that not only gives you the intoxicating feeling of free falling, but also amazing views of the lake right below.
    If that’s not enough for you, you could also try out the human slingshot that catapults you over 90m high at hair-raising speeds of 150km/s!
     If you're still on the fence about whether or not to try these death-defying rides, no need to worry! Your professional English speaking
      instructor will be there to guide you on basic safety measures and cheer you on if you need a little extra boost of morale. Whether it's
       the bungy jump, the human slingshot, or both, you're sure to have the time of your life. Plus,
  you can even bring home an HD video of you to show to everyone back home and make them wish they were there to experience it!", price: 160,
  start_date: Time.new(2019, 04, 14, 10, 15), end_date:
  Time.new(2019, 04, 14, 13, 15), activation_date: Time.new(2019, 03, 29, 10, 15),
  min_limit: 17, max_limit: 22)
act10.category = extreme
act10.save!
photos.each do |url|
  photo = Photo.new
  photo.remote_photo_url = url
  photo.activity = act10
  photo.save!
end

p "act 11"
photos=["https://www.carnival.com/~/media/Images/PreSales/Excursions/Ports_G-L/LRM/428053/Pictures/la-romana-zip-line-adventure-la-romana-dominican-republic-1.jpg",
  "https://cdn.getyourguide.com/img/tour_img-359781-148.jpg"]
act11 = Activity.new(name: "Zip line", location: "Jl. A.A. Gede Rai ",
  description: "Soar through Bali rainforest as you enjoy the natural wonder of a rainforest. If you're in luck,
   you'll also be able to see the rare hornbill among other animals. The site has a 300 meter rope slide, 2 rappel descents
   and 2 hanging sky bridges with an experienced guide who will pay close attention to your safety.
   At the end of the the obstacle, enjoy the view from a high platform overlooking the lush greenery and scenic mountains.", price: 180,
  start_date: Time.new(2019, 03, 15, 11, 30), end_date:
  Time.new(2019, 03, 15, 13, 30), activation_date: Time.new(2019, 03, 9, 13, 30),
  min_limit: 8, max_limit: 10)
act11.category = extreme
act11.save!
photos.each do |url|
  photo = Photo.new
  photo.remote_photo_url = url
  photo.activity = act11
  photo.save!
end
p "act 12"
photos=["https://cdn.getyourguide.com/img/tour_img-688055-145.jpg","https://cdn.getyourguide.com/img/tour_img-688061-145.jpg"]
act12 = Activity.new(name: "Spiritual Cleansing and Shamanic Healing Tour", location: "Central Batu",
  description: "Meet one of Bali's most famous healers, named Cokorda Rai from Puri Negari Ubud,
   and take some time to cleanse spiritually at the Bali Holy Spring Temple at Tirta Empul in Tampak Siring.
  Experience the Yagna, Yatra and Mantra healing techniques.", price: 80,
  start_date: Time.new(2019, 03, 15, 11, 30), end_date:
  Time.new(2019, 03, 15, 13, 30), activation_date: Time.new(2019, 03, 9, 13, 30),
  min_limit: 20, max_limit: 30)
act12.category = social
act12.save!
photos.each do |url|
  photo = Photo.new
  photo.remote_photo_url = url
  photo.activity = act12
  photo.save!
end
p "act 13"
photos = ["https://images.unsplash.com/photo-1533962504244-07f7de8dc3c0?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
"https://images.unsplash.com/photo-1501963422762-3d89bd989568?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60"]
act13 = Activity.new(name: "Lembongan Reef Cruise", location: "l. Pantai Berawa",
  description: "A full day of fun  – above and below the water -
   at Bali's neighboring Lemongan Island! Run by Indonesia's leading marine tourism company,
   their 24 years of experience is evident in the effortless care of the whole family's needs.
   The luxury catamaran cruises daily from Bali to Nusa Lembongan, where you'll moor up for the day
   so you can swim and snorkel the tropical waters, enjoy unlimited banana boat rides, a cultural tour
   of the island or the 35-meter waterslide! Plus, if you're feeling really adventurous, delve beneath the
   waves to explore the underwater world by scuba - even if you're a complete beginner! Or trial the 'aquanauts'
    to experience walking along the sea floor. When you've worked up an appetite,
   feast on a delicious buffet served in air conditioned comfort on board.", price: 149,
  start_date: Time.new(2019, 04, 28, 12, 30), end_date:
  Time.new(2019, 04, 28, 14, 30), activation_date: Time.new(2019, 03, 20, 12, 15),
  min_limit: 8, max_limit: 15)
act13.category = social
act13.save!
photos.each do |url|
  photo = Photo.new
  photo.remote_photo_url = url
  photo.activity = act13
  photo.save!
end
p "act 14"
photos =["https://images.unsplash.com/photo-1546936985-7b8df7a840d4?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
"https://images.unsplash.com/photo-1527733656522-3ba38b372dea?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1400&q=60",
"https://images.unsplash.com/photo-1514586358658-0de730e28cd2?ixlib=rb-1.2.1&auto=format&fit=crop&w=1400&q=60"]
act14 = Activity.new(name: "Paragliding", location: " Jl. Petitenget ",
  description: "
Conquer your fear of heights and enjoy an afternoon of flying when you join this paragliding activity at Timbis Beach in Bali.
Fly over the breathtaking Indian Ocean and see hidden temples, limestone cliffs, and the gorgeous Bali skyline from above.
No need to worry about safety as you’ll undergo basic paragliding lessons and safety procedures before flying. Once you’re
ready, you’ll be guided and assisted by a paragliding pilot and fly together!
There’ll also be video and photo documentation so you can brag abour this once-in-a-lifetime adventure to your friends!
Soar over the magnificent Indian Ocean on a thrilling parasailing adventure, glide through the air and feel the wind on your
 skin as you take in the breathtaking views. Parasailing is a fun recreational activity where a person is towed behind a boat while
 attached to a parachute with a special design. As the boat speeds off you will be lifted in the air and soar high above the sea with an
  amazing view of the scenery below. Take in the beautiful landscape of the tropical island from high up and even take pictures and videos from the air.
   The experience includes a 6-minute parasailing activity and convenient pick-up and drop-off from your hotel. If you're looking for the thrill of a lifetime,
   book the Parasailing Adventure + Donut Boat + Jet Ski + Banana Boat package,
which combines four exciting activities that are sure to give you an adrenaline rush!", price: 30,
  start_date: Time.new(2019, 04, 28, 12, 30), end_date:
  Time.new(2019, 04, 28, 14, 30), activation_date: Time.new(2019, 03, 20, 12, 15),
  min_limit: 20, max_limit: 25)
act14.category = social
act14.save!
photos.each do |url|
  photo = Photo.new
  photo.remote_photo_url = url
  photo.activity = act14
  photo.save!
end
p "act 15"
photos=["https://images.unsplash.com/photo-1503856348302-6829f18073f9?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60",
"https://images.unsplash.com/photo-1505738313577-5357ff512f16?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=60"]
act15 = Activity.new(name: "Parasailing", location: "Terunyan",
  description: "Bali, and in particular the island of Gili, is one of the most famous vacation paradises
  in the world, full of incredible watersports and adventure.
  This three-hour parasailing experience gives you the breathless thrill of soaring
  above the shining blue waters around Gili. You can gaze out at the island itsel
  f along with its pure white coastlines. Select between 600 feet and 800 feet
  and believe us – that extra 100 feet of height makes a world of difference when
   it comes to the views. Brace yourself to the roaring winds and soar as though you
    were on wings over the beautiful sea around Gili!

  ", price: 99,
  start_date: Time.new(2019, 03, 21, 14, 30), end_date:
  Time.new(2019, 03, 21, 18, 30), activation_date: Time.new(2019, 03, 9, 13, 30),
  min_limit: 11, max_limit: 25)
act15.category = extreme
act15.save!
photos.each do |url|
  photo = Photo.new
  photo.remote_photo_url = url
  photo.activity = act15
  photo.save!
end

p "done!"
