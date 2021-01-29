# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
user = User.create(username: 'test_user', email: 'test_email@email.com', password: 'password',
                   password_confirmation: 'password')

Campaign.create(title: 'Vox Machina', description: 'Legendary Heroes', user_id: user.id, image: "https://i.pinimg.com/originals/78/64/7c/78647c68fb642ad23d3f0fb9cbc55bda.jpg")
Campaign.create(title: 'Mighty Nien', description: 'Legendary Heroes', user_id: user.id, image: "https://i.pinimg.com/originals/78/64/7c/78647c68fb642ad23d3f0fb9cbc55bda.jpg")
Campaign.create(title: 'Black Goats', description: 'Legendary Heroes', user_id: user.id, image: "https://i.pinimg.com/originals/78/64/7c/78647c68fb642ad23d3f0fb9cbc55bda.jpg")
