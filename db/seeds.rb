# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'date'

User.delete_all
Trip.delete_all
Dog.delete_all

johnsmith = User.create(username:"jimmy", first_name: "John", last_name: "Smith", email: "js@gmail.com", phone_number: "(888) 555-5555", password: "123")

trip1 = Trip.create(date: Date.today, location: 'Fort Funston', time: (Time.now.utc - 28000).strftime("%I:%M %p"))
trip2 = Trip.create(date: (Date.today + 2), location: 'Sigmund Stern Recreation Grove', time: (Time.now.utc - 40000).strftime("%I:%M %p"))
trip3 = Trip.create(date: (Date.today + 3), location: 'Sigmund Stern Recreation Grove', time: (Time.now.utc - 40000).strftime("%I:%M %p"))
trip4 = Trip.create(date: (Date.today + 4), location: 'Sigmund Stern Recreation Grove', time: (Time.now.utc - 40000).strftime("%I:%M %p"))
trip5 = Trip.create(date: (Date.today + 5), location: 'Sigmund Stern Recreation Grove', time: (Time.now.utc - 40000).strftime("%I:%M %p"))
trip6 = Trip.create(date: (Date.today + 6), location: 'Sigmund Stern Recreation Grove', time: (Time.now.utc - 40000).strftime("%I:%M %p"))
trip7 = Trip.create(date: (Date.today + 8), location: 'Sigmund Stern Recreation Grove', time: (Time.now.utc - 40000).strftime("%I:%M %p"))
trip8 = Trip.create(date: (Date.today + 9), location: 'Sigmund Stern Recreation Grove', time: (Time.now.utc - 40000).strftime("%I:%M %p"))


dog1 = Dog.create(name: 'Rocky', weight: '65', breed: 'Bracco Italiano', age: '2 years', user_id: johnsmith.id)
dog2 = Dog.create(name: 'Drago', weight: '85', breed: 'Alaskan Malamute', age: '2 years', user_id: johnsmith.id)




''