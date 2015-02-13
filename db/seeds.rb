# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

puts "Deleting all records from the database..."
User.delete_all
Trip.delete_all
City.delete_all 
Item.delete_all
Pack.delete_all

puts "Creating users..."
khorshid = User.create(name: "Khorshid", email: "krahmaninejad2015@kellogg.northwestern.edu", password: "codered")
kevin = User.create(name: "Kevin", email: "kchao2015@kellogg.northwestern.edu", password: "codeblue")
lucy = User.create(name: "Lucy", email: "lcheng2015@kellogg.northwestern.edu", password: "codeorange")
nick = User.create(name: "Nick", email: "nhoushower2015@kellogg.northwestern.edu", password: "codeblack")
alice = User.create(name: "Alice", email: "agarabrant2015@kellogg.northwestern.edu", password: "coded")

puts "Creating trips..."
greece = Trip.create(name: "Greece 2015", user_id: "kevin", city_id: "athens", duration: "14", season: "summer")
argentina = Trip.create(name: "Argentina Spring Break", user_id: "khorshid", city_id: "buenos_aires", duration: "14", season: "summer")
thailand = Trip.create(name: "Thailand 2015", user_id: "lucy", city_id: "phuket", duration: "14", season: "fall")
china = Trip.create(name: "DaaLong", user_id: "nick", city_id: "beijing", duration: "5", season: "all")
vietnam = Trip.create(name: "Vietfood", user_id: "alice", city_id: "hanoi", duration: "7", season: "spring")

puts "Creating cities..."
athens = City.create(name: "Athens", country: "Greece")
buenos_aires = City.create(name: "Buenos Aires", country: "Argentina")
phuket = City.create(name: "Phuket", country: "Thailand")
beijing = City.create(name: "Beijing", country: "China")
hanoi = City.create(name: "Hanoi", country: "Vietnam")

puts "Creating items..."
dresspants = Item.create(name: "Dress Pants", category: "Clothes", season: "all")
casualpants = Item.create(name: "Casual Pants", category: "Clothes", season: "all")
dressshirt = Item.create(name: "Dress Shirt", category: "Clothes", season: "all")
casualshirt = Item.create(name: "Casual Shirt", category: "Clothes", season: "all")
bathingsuit = Item.create(name: "Bathing Suit", category: "Clothes", season: "summer")
sunglasses = Item.create(name: "Sunglasses", category: "Accessories", season: "summer")
pajamas = Item.create(name: "Pajamas", category: "Clothes", season: "all")
beachdress = Item.create(name: "Beach Dress", category: "Clothes", season: "summer")
heels = Item.create(name: "Heels", category: "Shoes", season: "summer")
suit = Item.create(name: "Suit", category: "Clothes", season: "all")

puts "Creating packing lists..."
#Argentina Spring Break
Pack.create(trip_id: argentina.id, item_id: dressshirt.id, quantity: "4")
Pack.create(trip_id: argentina.id, item_id: heels.id, quantity: "2")
#Thailand 2015
Pack.create(trip_id: thailand.id, item_id: beachdress.id, quantity: "3")
Pack.create(trip_id: thailand.id, item_id: bathingsuit.id, quantity: "2")
Pack.create(trip_id: thailand.id, item_id: pajamas.id, quantity: "2")
#DaaLong
Pack.create(trip_id: china.id, item_id: suit.id, quantity: "2")

puts "There are now #{User.count} users, #{Trip.count} trips, #{City.count} cities, #{Item.count} items, and #{Pack.count} packing lists in the database."
