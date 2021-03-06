# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'

Trip.destroy_all
Dog.destroy_all
DogTrip.destroy_all
User.destroy_all

johnsmith = User.create(username:"jimmy", first_name: "John", last_name: "Smith", email: "js@gmail.com", phone_number: "(888) 555-5555", password: "123")

trip1 = Trip.create(date: Date.today, location: 'Fort Funston', time: (Time.now.utc).strftime("%I:%M %p"))
trip2 = Trip.create(date: (Date.today + 2), location: 'Stern Grove', time: (Time.now.utc).strftime("%I:%M %p"))
trip3 = Trip.create(date: (Date.today + 3), location: "Marshall's Beach", time: (Time.now.utc).strftime("%I:%M %p"))
trip4 = Trip.create(date: (Date.today + 4), location: "Lands End", time: (Time.now.utc).strftime("%I:%M %p"))
trip5 = Trip.create(date: (Date.today + 5), location: 'Fort Funston', time: (Time.now.utc).strftime("%I:%M %p"))
trip6 = Trip.create(date: (Date.today + 6), location: 'Stern Grove', time: (Time.now.utc).strftime("%I:%M %p"))
trip7 = Trip.create(date: (Date.today + 7), location: "Marshall's Beach", time: (Time.now.utc).strftime("%I:%M %p"))
trip8 = Trip.create(date: (Date.today + 8), location: "Lands End", time: (Time.now.utc).strftime("%I:%M %p"))
trip9 = Trip.create(date: (Date.today + 9), location: 'Fort Funston', time: (Time.now.utc).strftime("%I:%M %p"))
trip10 = Trip.create(date: (Date.today + 10), location: 'Stern Grove', time: (Time.now.utc).strftime("%I:%M %p"))
trip11 = Trip.create(date: (Date.today + 11), location: "Marshall's Beach", time: (Time.now.utc).strftime("%I:%M %p"))
trip12 = Trip.create(date: (Date.today + 12), location: "Lands End", time: (Time.now.utc).strftime("%I:%M %p"))


dog1 = Dog.create(name: 'Rocky', weight: '65', breed: 'Bracco Italiano', age: '2 years', user_id: johnsmith.id)
dog2 = Dog.create(name: 'Drago', weight: '85', breed: 'Alaskan Malamute', age: '2 years', user_id: johnsmith.id)




''