# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(first_name: "Mos", last_name: "Def")
Student.create(first_name: "Talib", last_name: "Kweli")
Student.create(first_name: "Andrea", last_name: "Sabbatini")
Student.create(first_name: "Maria", last_name: "Sáez")

SchoolClass.create(title: "Intro to Modern Art", room_number: 101)
SchoolClass.create(title: "The Science of Music", room_number: 808)
SchoolClass.create(title: "Art & the Buddha", room_number: 205)
SchoolClass.create(title: "El's Fantastic Mystical Machine", room_number: 115)
SchoolClass.create(title: "Art & Design", room_number: 522)