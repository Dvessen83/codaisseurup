Photo.delete_all
Category.delete_all
Event.delete_all
Profile.delete_all
User.delete_all

concert = Category.create(name: "Concert")
festival = Category.create(name: "Festival")
one_day = Category.create(name: "One day event")
family_friendly = Category.create(name: "Family friendly")


john = User.create(email: "john@codaisseurup.com", password: "Koffie02")
bob = User.create(email: "bob@codaisseurup.com", password: "Koffie02")
harry = User.create(email: "harry@codaisseurup.com", password: "Koffie02")

#Photos
photo1 = Photo.create(remote_image_url: "http://res.cloudinary.com/dxgom8aj1/image/upload/v1489670795/logo-nl_guc7s0.svg")
photo2 = Photo.create(remote_image_url: "http://res.cloudinary.com/dxgom8aj1/image/upload/v1489670772/streekbierFestival_20Utrecht_20Banner_nhqroy.jpg")
photo3 = Photo.create(remote_image_url: "http://res.cloudinary.com/dxgom8aj1/image/upload/v1489670726/Coldplay-feat_obgc58.jpg")

#Events
event1 = Event.create(name:"Coldplay", description:"concert album tour", location:"Wembley", price: 50, capacity: "string", includes_food: true, includes_drinks: true, starts_at:("03/10/2017 9:00"), ends_at:("03/10/2017 14:00"), active: true, user: john, categories: [concert, one_day], photos:[photo3])
event2 = Event.create(name: "Streekbierfestival", description: "Bieren van lokale brouwerijen", location: "Utrecht", price:0, capacity: 20000, includes_food: false, includes_drinks: true, starts_at:("17/03/2017 13:00"), ends_at:("19/03/2017 23:00"), active: true, user: bob, categories: [festival], photos:[photo2])
event3 = Event.create(name: "Pink Pop", description: "music festival", location: "Landgraaf", price: 200, capacity: 40000, includes_food: true, includes_drinks: true, starts_at:("16/06/2017 14:00"), ends_at:("19/06/2017 22:00"), active: true, user: harry, categories:[festival, family_friendly, concert], photos:[photo1])
