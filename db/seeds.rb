User.destroy_all

john = User.create(email: "john@codaisseurup.com", password: "Koffie02")

event = Event.create(name:"Coldplay", description:"concert album tour", location:"Wembley", price: 50, capacity: "string", includes_food: true, includes_drinks: true, starts_at:("03/10/2017 9:00"), ends_at:("30/10/2017 14:00"), active: true, user: john)
