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
nic = User.new(name: "Nicolas", surname: "Feer", email: "nic@gmail.com", password: "nic12345",
  age: 19, location: "628 Wilson St.
Brooklyn, NY 11238", description: "Hi I'm Nic. I'm currently on my gap year before starting uni at Masstricht in Sep.
  I love karaoke and gaming!")
nic.remote_photo_url = "https://i.imgur.com/FYloZCSs.png"
nic.save!
p "user 2"
chris = User.new(name: "Christian", surname: "Soelling", email: "chris@gmail.com", password: "chris12345",
  age: 18, location: "8 Smith Store Dr.
Astoria, NY 11105", description: "Im Chris, originally from Sydney. I love Fifa and traveling!")
chris.remote_photo_url = "https://i.imgur.com/utZQmi6s.png"
chris.save!
p "user 3"
lucas = User.new(name: "Lucas", surname: "Cheung", email: "lucas@gmail.com", password: "lucas12345",
  age: 17, location: "71 Greenrose Lane
Jamestown, NY 14701", description: "Love climbing, basketball and asian food :)")
lucas.remote_photo_url = "https://i.imgur.com/PP0iLGYs.png"
lucas.save!
p "user 4"
hana = User.new(name: "Hana", surname: "Awad", email: "hana@gmail.com", password: "hana12345",
  age: 19, location: "7181 James St.
Buffalo, NY 14215", description: "Hi! I love cooking and doing all sorts of sports, especially surfing!")
hana.remote_photo_url = "https://i.imgur.com/aEctbqGs.jpg"
hana.save!
p "user 5"
max = User.new(name: "Max", surname: "Glasmacher", email: "max@gmail.com", password: "max12345",
  age: 18, location: "9104 St Margarets St.
Brentwood, NY 11717", description: "Yoo! Surfing, basketball and traveling is ma life!!!")
max.remote_photo_url = "https://i.imgur.com/s2xRA1Zs.jpg"
max.save!
p "user 6"
amanda = User.new(name: "Amanda", surname: "Schjørmann", email: "amanda@gmail.com", password: "amanda12345",
  age: 18, location: "430 Hamilton Street
Bronx, NY 10466", description: "Heya! I always love skydiving and finding new cool bars!")
amanda.remote_photo_url = "https://i.imgur.com/0dhCekOs.png"
amanda.save!
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
indoor = Category.create(name: "indoor")
educational = Category.create(name: "educational")
extreme = Category.create(name: "extreme")
water = Category.create(name: "water")
nature = Category.create(name: "nature")
social = Category.create(name: "social")
p "Creating 15 activities"
p "act 1"

url = "https://23srl238m4633xpusz2dk3vb-wpengine.netdna-ssl.com/wp-content/uploads/2016/11/67f706_993b4ce24eea4f8ba0aefabe263e207c.png"
p1 = Photo.new
p1.remote_photo_url = url
act1 = Activity.new(name: "Empire City Watersports", location: "417 Bay 41st St, Brooklyn, NY 11214, USA",
  description: "At Empire City Watersports we have taken the idea of renting a Jet ski and have
  brought it to the beautiful Empire City known as more popularly New York City. The excitement of
  riding a Jet ski in itself is something worth coming down for, but taking one of our tours and
  viewing New York City from the water is truly an amazing sight to see that most locals don’t
  really ever get to experience! Come join us on one of our tours and we will give you that
  opportunity, while riding comfortably and freely at your own pace.", price: 250,
  start_date: Time.new(2019, 03, 20, 10, 15), end_date:
  Time.new(2019, 03, 20, 12, 15), activation_date: Time.new(2019, 03, 12, 11, 15),
  min_limit: 15, max_limit: 20)
act1.category = water
act1.save!
p1.activity = act1
p1.save!

p "review 1"
r1 = Review.new(description: "Jetskiing is super awsome! The view on NYC
  was simply stunning!!", rating: 4)
r1.activity = act1
r1.user = max
r1.save!
p "act 2"
act2 = Activity.new(name: "iFLY Westchester", location: "849 Ridge Hill Boulevard, Yonkers, New York, 914-449-4359",
  description: "iFLY is where the dream of flight becomes a reality. Become a part of something
  bigger than yourself. You’ll fall in love with the sensation & the freedom that comes with
  floating on air and when you do, there’s a new & exciting sport of indoor bodyflight to become
    involved in.", price: 149,
  start_date: Time.new(2019, 03, 19, 11, 25), end_date:
  Time.new(2019, 03, 19, 13, 15), activation_date: Time.new(2019, 03, 12, 14, 15),
  min_limit: 15, max_limit: 20)
act2.category = extreme
act2.remote_photo_url = "https://www.gannett-cdn.com/-mm-/564eaaedc71f9c21ffb61b2b37eb0498dc021d5f/c=0-341-5367-3373/local/-/media/2015/12/21/Westchester/Westchester/635863102488705581-ts122115ifly01.jpg?width=3200&height=1680&fit=crop"
act2.save!
p "review 2"
r2 = Review.new(description: "Wow, i never thought that indoor flying could
  be this cool!", rating: 5)
r2.activity = act2
r2.user = max
r2.save!
p "act 3"
act3 = Activity.new(name: "AIRE Ancient Baths", location: "88 Franklin St, New York
NY 10013",
  description: "In the midst of the bustle and fast-paced rhythm of downtown,
  right at the heart of TriBeCa, there is an oasis of tranquility exclusively designed to
  balance mind and body. Located at a restored historical building, originally an 1883 textile
  factory, the AIRE experience consists of an unforgettable journey through sensations across
  the various baths with water at different temperatures that will transport you to the ancient
  times of the Roman, Greek and Ottoman traditions. Come discover a unique atmosphere of relaxation.", price: 149,
  start_date: Time.new(2019, 04, 19, 12, 30), end_date:
  Time.new(2019, 04, 19, 14, 30), activation_date: Time.new(2019, 03, 17, 12, 15),
  min_limit: 10, max_limit: 15)
act3.category = indoor
act3.remote_photo_url = "https://beaire.com/sites/all/modules/beaire/img/centros/newyork2.jpg"
act3.save!
p "review 3"
r3 = Review.new(description: "Hmmm, nothing more relaxing
  than a 2h long bath in ancient times", rating: 4)
r3.activity = act3
r3.user = max
r3.save!
p "act 4"
act4 = Activity.new(name: "Clue Chase - Egyptian Tomb", location: "The Grace Building, The Concourse, 1114 Avenue of the Americas, New York, New York",
  description: "Clue Chase is a fun fast paced escape room game, consistently rated one
  of the top experiences in NYC.  As the only Escape Room located in a class A building in
  NYC, Clue Chase has the safest and most immersive escape rooms around! Our escape rooms are
  perfect for friends, coworkers and family of all experience levels. Each escape room contains a
  mystery that must be solved as a team. With four epic escape games to choose from, there’s
  something for everyone! Work together to find clues, solve puzzles, collect hidden items, and
  complete your mission in less than 60 minutes. ", price: 99,
  start_date: Time.new(2019, 04, 17, 11, 30), end_date:
  Time.new(2019, 04, 17, 13, 30), activation_date: Time.new(2019, 04, 9, 13, 30),
  min_limit: 11, max_limit: 13)
act4.category = indoor
act4.remote_photo_url = "https://vignette.wikia.nocookie.net/cause-for-concern-larp/images/d/d1/Throne_Room.jpg/revision/latest?cb=20140930082151"
act4.save!
p "review 4"
r4 = Review.new(description: "I got a little bit confused", rating: 3)
r4.activity = act4
r4.user = max
r4.save!
p "act 5"
act5 = Activity.new(name: "New York Midtown Scavenger Hunt Adventure", location: "The Grace Building, The Concourse, 1114 Avenue of the Americas, New York, New York",
  description: "Make New York your game board with a 3-hour scavenger hunt adventure
  through midtown Manhattan and Times Square, and explore the city’s history and landmarks
  at your own pace. Trace the 2-mile route on a smart phone, take on a series of challenges with
  your team of 2-5 people and solve New York-themed puzzles as you walk. Pause to eat and drink
  along the way and give your day in the city a competitive edge by racking up points to compare
  with teams that have completed the same exciting challenge.", price: 20,
  start_date: Time.new(2019, 04, 17, 11, 30), end_date:
  Time.new(2019, 04, 17, 13, 30), activation_date: Time.new(2019, 04, 9, 13, 30),
  min_limit: 8, max_limit: 20)
act5.category = social
act5.remote_photo_url = "https://tourscanner.co/blog/wp-content/uploads/2018/03/scavenger_hunt.jpg"
act5.save!
p "act 6"
act6 = Activity.new(name: "NYC Helicopter tour", location: "Helicopter Flight Services
  Inc, Downtown Manhattan Heliport pier 6, New York",
  description: "Experience New York in a way that most tourists never get to do with
  this incredible, 15-minute helicopter ride that will serve as an aerial tour of the city.
  Marvel at the stunning skyline and get up close to sights like the Brooklyn Bridge and Empire
  State Building.", price: 200,
  start_date: Time.new(2019, 04, 15, 11, 30), end_date:
  Time.new(2019, 04, 15, 13, 30), activation_date: Time.new(2019, 04, 9, 13, 30),
  min_limit: 8, max_limit: 10)
act6.category = educational
act6.remote_photo_url = "https://tourscanner.co/blog/wp-content/uploads/2018/03/new-york-helicopter-tour.jpg"
act6.save!
p "act 7"
act7 = Activity.new(name: "Gospel Tour in New York City", location: "Harlem",
  description: "Enjoy a guided tour through the historic neighborhood of Harlem -
Attend Baptist Mass with a Gospel Choir -
See the Apollo Theater, Sugar Hill, Morningside Heights and Columbia University -
Enjoy a unique tour off the tourist track", price: 40,
  start_date: Time.new(2019, 04, 15, 11, 30), end_date:
  Time.new(2019, 04, 15, 13, 30), activation_date: Time.new(2019, 04, 9, 13, 30),
  min_limit: 9, max_limit: 16)
act7.category = educational
act7.remote_photo_url = "https://cdn.getyourguide.com/img/tour_img-220567-145.jpg"
act7.save!
p "act 8"
act8 = Activity.new(name: "House of Yes", location: "Bushwick",
  description: "This wild Bushwick hotspot opened in 2016 and quickly established
  itself as a reliable way for Brooklyn revelers to wear insane costumes and lose their
  inhibitions just about every weekend. With exhibitionist parties like “House of Love” and
  the immersive “Little Cinema” film tributes, along with a panoply of aerialists, magicians
  and dancers on retainer, House of Yes is constantly inventing new ways to make a night out
  more than just drinks at the bar. Pro tip: Snag tickets in advance and get there early — the
  entry line often runs the block.", price: 80,
  start_date: Time.new(2019, 04, 17, 22, 30), end_date:
  Time.new(2019, 04, 18, 5, 30), activation_date: Time.new(2019, 04, 12, 13, 30),
  min_limit: 9, max_limit: 16)
act8.category = social
act8.remote_photo_url = "https://media.timeout.com/images/103533836/1372/772/image.jpg"
act8.save!
p "act 9"
act9 = Activity.new(name: "Empire City Watersports", location: "417 Bay 41st St, Brooklyn, NY 11214, USA",
  description: "At Empire City Watersports we have taken the idea of renting a Jet ski and have
  brought it to the beautiful Empire City known as more popularly New York City. The excitement of
  riding a Jet ski in itself is something worth coming down for, but taking one of our tours and
  viewing New York City from the water is truly an amazing sight to see that most locals don’t
  really ever get to experience! Come join us on one of our tours and we will give you that
  opportunity, while riding comfortably and freely at your own pace.", price: 220,
  start_date: Time.new(2019, 04, 12, 10, 15), end_date:
  Time.new(2019, 04, 12, 12, 15), activation_date: Time.new(2019, 03, 25, 11, 15),
  min_limit: 8, max_limit: 10)
act9.category = water
act9.remote_photo_url = "https://i0.wp.com/www.rockawayjetski.com/wp-content/uploads/2015/06/funjetski.jpg?fit=1900%2C1069&ssl=1"
act9.save!
p "act 10"
act10 = Activity.new(name: "Empire City Watersports", location: "417 Bay 41st St, Brooklyn, NY 11214, USA",
  description: "At Empire City Watersports we have taken the idea of renting a Jet ski and have
  brought it to the beautiful Empire City known as more popularly New York City. The excitement of
  riding a Jet ski in itself is something worth coming down for, but taking one of our tours and
  viewing New York City from the water is truly an amazing sight to see that most locals don’t
  really ever get to experience! Come join us on one of our tours and we will give you that
  opportunity, while riding comfortably and freely at your own pace.", price: 260,
  start_date: Time.new(2019, 04, 14, 10, 15), end_date:
  Time.new(2019, 04, 14, 13, 15), activation_date: Time.new(2019, 03, 29, 10, 15),
  min_limit: 17, max_limit: 22)
act10.category = water
act10.remote_photo_url = "https://bagatyou.com/wp-content/uploads/2017/12/Bag-at-you-Sea-the-city-New-York-jet-ski.jpg"
act10.save!
p "act 11"
act11 = Activity.new(name: "NYC Helicopter tour", location: "Helicopter Flight Services
  Inc, Downtown Manhattan Heliport pier 6, New York",
  description: "Experience New York in a way that most tourists never get to do with
  this incredible, 15-minute helicopter ride that will serve as an aerial tour of the city.
  Marvel at the stunning skyline and get up close to sights like the Brooklyn Bridge and Empire
  State Building.", price: 180,
  start_date: Time.new(2019, 03, 15, 11, 30), end_date:
  Time.new(2019, 03, 15, 13, 30), activation_date: Time.new(2019, 03, 9, 13, 30),
  min_limit: 8, max_limit: 10)
act11.category = educational
act11.remote_photo_url = "https://cdn-imgix.headout.com/tour/18044/TOUR-IMAGE/0ea13005-9e28-4de4-b235-815f129b1081-9874-new-york-nyc-helicopter-tour-15-minute-tour-03.jpg?auto=compress&fm=webp&w=1200&h=750&crop=faces&fit=min"
act11.save!
p "act 12"
act12 = Activity.new(name: "Manhattan Holiday Yacht Cruise with Jazz, Cocoa & Carols", location: "Pier 15, 78 South St,
  New York, NY 10038",
  description: "Climb aboard a luxury yacht and sail around Manhattan on a holiday season cruise.
  See the New York skyline, decked out in its Christmas clothes, and warm up with cocoa and
  cookies as you listen to live entertainment and carols.", price: 80,
  start_date: Time.new(2019, 03, 15, 11, 30), end_date:
  Time.new(2019, 03, 15, 13, 30), activation_date: Time.new(2019, 03, 9, 13, 30),
  min_limit: 20, max_limit: 30)
act12.category = social
act12.remote_photo_url = "https://cdn.getyourguide.com/img/tour_img-292244-145.jpg"
act12.save!
p "act 13"
act13 = Activity.new(name: "AIRE Ancient Baths", location: "88 Franklin St, New York
NY 10013",
  description: "In the midst of the bustle and fast-paced rhythm of downtown,
  right at the heart of TriBeCa, there is an oasis of tranquility exclusively designed to
  balance mind and body. Located at a restored historical building, originally an 1883 textile
  factory, the AIRE experience consists of an unforgettable journey through sensations across
  the various baths with water at different temperatures that will transport you to the ancient
  times of the Roman, Greek and Ottoman traditions. Come discover a unique atmosphere of relaxation.", price: 149,
  start_date: Time.new(2019, 04, 28, 12, 30), end_date:
  Time.new(2019, 04, 28, 14, 30), activation_date: Time.new(2019, 03, 20, 12, 15),
  min_limit: 8, max_limit: 15)
act13.category = indoor
act13.remote_photo_url = "https://beaire.com/sites/all/modules/beaire/img/centros/newyork2.jpg"
act13.save!
p "act 14"
act14 = Activity.new(name: "Modern Pinball NYC", location: "88 Franklin St, New York
NY 10013",
  description: "Featured in THE WALL STREET JOURNAL and on NBC's TODAY, FOX and CNN, Modern Pinball
  YC has become an overnight sensation and cultural phenomenon named BEST OF NEW YORK for FUN by New
  York Magazine. Enjoy dozens of modern and classic pinball machines and arcade games while exploring
  their rich history, art and technology.", price: 30,
  start_date: Time.new(2019, 04, 28, 12, 30), end_date:
  Time.new(2019, 04, 28, 14, 30), activation_date: Time.new(2019, 03, 20, 12, 15),
  min_limit: 20, max_limit: 25)
act14.category = social
act14.remote_photo_url = "https://i.kinja-img.com/gawker-media/image/upload/s--bFvo1fxz--/c_fill,f_auto,fl_progressive,g_center,h_675,q_80,w_1200/1322602791531132197.jpg"
act14.save!
p "act 15"
act15 = Activity.new(name: "Clue Chase - Alien Encounter", location: "1114 Avenue of Americas, New York, NY 10036",
  description: "Clue Chase is a fun fast paced escape room game, consistently rated one
  of the top experiences in NYC.  As the only Escape Room located in a class A building in
  NYC, Clue Chase has the safest and most immersive escape rooms around! Our escape rooms are
  perfect for friends, coworkers and family of all experience levels. Each escape room contains a
  mystery that must be solved as a team. With four epic escape games to choose from, there’s
  something for everyone! Work together to find clues, solve puzzles, collect hidden items, and
  complete your mission in less than 60 minutes. ", price: 99,
  start_date: Time.new(2019, 03, 21, 14, 30), end_date:
  Time.new(2019, 03, 21, 18, 30), activation_date: Time.new(2019, 03, 9, 13, 30),
  min_limit: 11, max_limit: 25)
act15.category = indoor
act15.remote_photo_url = "https://www.cluechase.com/storage/2018/09/Alien-Enounter-Banner.jpg"
act15.save!
p "done!"
