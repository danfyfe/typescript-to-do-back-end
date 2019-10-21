# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

## ToDos ##

to_do_1 = ToDo.find_or_create_by(title: 'Make List', completed: true)
to_do_2 = ToDo.find_or_create_by(title: 'Buy milk', completed: false)
to_do_3 = ToDo.find_or_create_by(title: 'Do this!', completed: true)
to_do_4 = ToDo.find_or_create_by(title: 'Do that!', completed: false)
to_do_5 = ToDo.find_or_create_by(title: 'Finish List', completed: false)