p "creating 10 detailed users"
p "user 1"
nic = User.new(name: "Nicolas", surname: "Feer", email: "nic@gmail.com", password: "nic12345",
  age: 19, location: "Sydney", description: "Hi I'm Nic. I'm currently on my gap year before starting uni at Masstricht in Sep.
  I love karaoke and gaming!")
nic.remote_photo_url = "https://i.imgur.com/FYloZCS.png"
nic.save!
p "user 2"
chris = User.new(name: "Christian", surname: "Soelling", email: "chris@gmail.com", password: "chris12345",
  age: 18, location: "Singapore", description: "Im Chris, originally from Sydney. I love Fifa and traveling!")
chris.remote_photo_url = "https://i.imgur.com/utZQmi6.png"
chris.save!
p "user 3"
lucas = User.new(name: "Lucas", surname: "Cheung", email: "lucas@gmail.com", password: "lucas12345",
  age: 17, location: "Buenos Aires", description: "Love climbing, basketball and asian food :)")
lucas.remote_photo_url = "https://i.imgur.com/PP0iLGY.png"
lucas.save!
p "user 4"
hana = User.new(name: "Hana", surname: "Awad", email: "hana@gmail.com", password: "hana12345",
  age: 19, location: "Cairo", description: "Hi! I love cooking and doing all sorts of sports, especially surfing!")
hana.remote_photo_url = "https://i.imgur.com/aEctbqG.jpg"
hana.save!
p "user 5"
max = User.new(name: "Max", surname: "Glasmacher", email: "max@gmail.com", password: "max12345",
  age: 18, location: "Buenos Aires", description: "Yoo! Surfing, basketball and traveling is ma life!!!")
max.remote_photo_url = "https://i.imgur.com/s2xRA1Z.jpg"
max.save!
p "user 6"
amanda = User.new(name: "Amanda", surname: "Schjørmann", email: "amanda@gmail.com", password: "amanda12345",
  age: 18, location: "Sydney", description: "Heya! I always love skydiving and finding new cool bars!")
amanda.remote_photo_url = "https://i.imgur.com/0dhCekO.png"
amanda.save!
p "user 7"
irene = User.new(name: "Irene", surname: "Jona Smith", email: "irene@gmail.com", password: "irene12345",
  age: 19, location: "Cairo", description: "Hii! Really into coding, climbing and rugby!")
irene.remote_photo_url = "https://i.imgur.com/op2Ajpa.png"
irene.save!
p "user 8"
mohamed = User.new(name: "Mohamed", surname: "Zaki", email: "mohamed@gmail.com", password: "mohamed12345",
  age: 21, location: "Sydney", description: "Yoyo whatsup! Im a Microsoft intern traveling the world!
  I love cooking, catan and going on crazy adventures!")
mohamed.remote_photo_url = "https://i.imgur.com/smiuaRg.png"
mohamed.save!
p "user 9"
ana = User.new(name: "Ana", surname: "Ivan", email: "ana@gmail.com", password: "ana12345",
  age: 19, location: "Singapore", description: "Hihi! Currently travlin the world before becoming a professional snooker player
  next year! I loove food and new cultures!")
ana.remote_photo_url = "https://i.imgur.com/RBAjoQr.png"
ana.save!
p "user 10"
andre = User.new(name: "Andre", surname: "Orvalho", email: "andre@gmail.com", password: "andre12345",
  age: 19, location: "Singapore", description: "Hihi! gyming, skating and surfing are liiiit!!")
andre.remote_photo_url = "https://i.imgur.com/buNKsUz.png"
andre.save!
p "creating 10 remaining users"
p "user 11"
konsti = User.new(name: "Konstantin", surname: "Pörschke", email: "konsti@gmail.com", password: "konsti12345",
  age: 18, location: "Budapest")
konsti.remote_photo_url = "https://i.imgur.com/V7KAkkI.png"
konsti.save!
p "user 12"
victor = User.new(name: "Victor", surname: "Castell", email: "victor@gmail.com", password: "victor12345",
  age: 19, location: "Budapest")
victor.remote_photo_url = "https://i.imgur.com/YJMfJhn.png"
victor.save!
p "user 13"
carl = User.new(name: "Carl", surname: "Berger", email: "carl@gmail.com", password: "carl12345",
  age: 19, location: "Budapest")
carl.remote_photo_url = "https://i.imgur.com/3tP4jE9.png"
carl.save!
p "user 14"
nelly = User.new(name: "Nelly", surname: "Glasmacher", email: "nelly@gmail.com", password: "nelly12345",
  age: 20, location: "Cairo")
nelly.remote_photo_url = "https://i.imgur.com/40VUabl.png"
nelly.save!
p "user 15"
pablo = User.new(name: "Pablo", surname: "Ninos", email: "pablo@gmail.com", password: "pablo12345",
  age: 19, location: "Sydney")
pablo.remote_photo_url = "https://i.imgur.com/5G0gtuJ.png"
pablo.save!
p "user 16"
iggnazio = User.new(name: "Iggnazio", surname: "Stigmoller", email: "iggnazio@gmail.com", password: "iggnazio12345",
  age: 18, location: "Cairo")
iggnazio.remote_photo_url = "https://i.imgur.com/WnATBdH.png"
iggnazio.save!
p "user 17"
leesa = User.new(name: "Leesa", surname: "Tatis", email: "leesa@gmail.com", password: "leesa12345",
  age: 19, location: "San Fransisco")
leesa.remote_photo_url = "https://i.imgur.com/DKO2s8Q.png"
leesa.save!
p "user 18"
hugo = User.new(name: "Hugo", surname: "de Saint Chaffray", email: "hugo@gmail.com", password: "hugo12345",
  age: 20, location: "San Fransisco")
hugo.remote_photo_url = "https://i.imgur.com/Ed1xjLk.png"
hugo.save!
p "user 19"
sofia = User.new(name: "Sofia", surname: "Underwood", email: "sofia@gmail.com", password: "sofia12345",
  age: 19, location: "San Fransisco")
sofia.remote_photo_url = "https://i.imgur.com/2N3C5GF.png"
sofia.save!
p "user 20"
eva = User.new(name: "Eva", surname: "Bourson", email: "eva@gmail.com", password: "eva12345",
  age: 19, location: "Singapore")
eva.remote_photo_url = "https://i.imgur.com/ESaXlDo.png"
eva.save!
p "done!"

