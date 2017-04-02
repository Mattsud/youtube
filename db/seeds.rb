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
                  admin: true)
user_1.save!

user_2 = User.new(email:'alexis@gmail.com',
                  password: '111111',
                  username: 'alexis',
                  admin: true)
user_2.save!

category_1 = Category.new(title:'Comedy',
                          description: 'Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_1.save!

category_2 = Category.new(title:'Education',
                          description: 'Short Movie bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_2.save!

category_3 = Category.new(title:'Lifestyle / People',
                          description: 'Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_3.save!

category_4 = Category.new(title:'Music',
                          description: 'Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_4.save!

category_5 = Category.new(title:'Short Movie',
                          description: 'Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_5.save!

category_6 = Category.new(title:'Sport',
                          description: 'Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_6.save!

category_7 = Category.new(title:'Travel',
                          description: 'Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_7.save!

category_7 = Category.new(title:'Vlog',
                          description: 'Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_7.save!

category_8 = Category.new(title:'Other',
                          description: 'Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_8.save!

youtube = Plateform.new(title:"Youtube",
                        description: "Youtube est cool")
url = "https://www.leriremedecin.org/images/template/youtube.png"
youtube.remote_photo_url = url
youtube.save!