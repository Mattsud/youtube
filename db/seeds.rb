# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.new(email:'mathieu@mathieu.com',
                  password: '111111',
                  username: 'mathieu',
                  confirmed_at: Time.now,
                  admin: true)
user_1.save!

user_2 = User.new(email:'alexis@gmail.com',
                  password: '111111',
                  username: 'alexis',
                  confirmed_at: Time.now,
                  admin: true)
user_2.save!

youtube = Plateform.new(title:"Youtube",
                        description: "Youtube est cool")
url = "http://res.cloudinary.com/dcncosmzg/image/upload/v1491358851/xhyhydigpazwclgxoql4.png"
youtube.remote_photo_url = url
youtube.save!