# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Case.delete_all #don't run this in production LoL
Comment.delete_all #don't run this in production LoL

case_1 = Case.create(url: 'www.reddust.org.au')
case_2 = Case.create(url: 'www.petasitcheff.com')

Comment.create(case_id: case_1.id, text: 'We would like for the videos to be embedded in lightboxes in the Music Videos page')
Comment.create(case_id: case_1.id, text: 'You know that it really doesnt make that much different to the user experience?')
Comment.create(case_id: case_1.id, text: 'Yeah but we want it')
Comment.create(case_id: case_1.id, text: 'How does this change add value to the user anyway?')

Comment.create(case_id: case_2.id, text: 'Please add radio buttons to the contact form')
Comment.create(case_id: case_2.id, text: 'Yes I think we should be able to do that')
Comment.create(case_id: case_2.id, text: 'Actually that is way too hard')
Comment.create(case_id: case_2.id, text: 'The developers say it will take 3 hours')
Comment.create(case_id: case_2.id, text: 'Lets not bother after all')
Comment.create(case_id: case_2.id, text: 'Users will just directly email instead of using the form anyway')
