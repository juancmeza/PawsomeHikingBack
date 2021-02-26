# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

johnsmith = User.create(username:"js", first_name: "John", last_name: "Smith", email: "js@gmail.com", phone_number: "(888) 555-5555", password_digest: "123")