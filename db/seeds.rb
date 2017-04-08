# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user_2 = User.new(email:'alexis@gmaileopr.com',
                  password: '111111',
                  username: 'alexis',
                  confirmed_at: Time.now)
user_2.save!

user_1 = User.new(email:'mathieu@mathieu.com',
                  password: '111111',
                  username: 'mathieu',
                  confirmed_at: Time.now,
                  admin: true)
user_1.save!

user_3 = User.new(email:'a@gmlloi.com',
                  password: '111111',
                  username: 'mathieu1',
                  confirmed_at: Time.now)
user_3.save!

user_4 = User.new(email:'al@gmlloi.com',
                  password: '111111',
                  username: 'mathieu2',
                  confirmed_at: Time.now)
user_4.save!

user_5 = User.new(email:'alex@gmlloi.com',
                  password: '111111',
                  username: 'mathieu3',
                  confirmed_at: Time.now)
user_5.save!

user_6 = User.new(email:'alexi@gmlloi.com',
                  password: '111111',
                  username: 'mathieu4',
                  confirmed_at: Time.now)
user_6.save!

user_7 = User.new(email:'alexiss@gmlloi.com',
                  password: '111111',
                  username: 'mathieu5',
                  confirmed_at: Time.now)
user_7.save!

user_8 = User.new(email:'alexisss@gmlloi.com',
                  password: '111111',
                  username: 'mathieu6',
                  confirmed_at: Time.now)
user_8.save!

user_9 = User.new(email:'alexisss@gmslloi.com',
                  password: '111111',
                  username: 'mathieu7',
                  confirmed_at: Time.now)
user_9.save!

user_10 = User.new(email:'alexissss@gmlloi.com',
                  password: '111111',
                  username: 'mathieu8',
                  confirmed_at: Time.now)
user_10.save!

user_11 = User.new(email:'alexissdcs@gmlloi.com',
                  password: '111111',
                  username: 'mathieu9',
                  confirmed_at: Time.now)
user_11.save!

user_12 = User.new(email:'alexiscss@gmlloi.com',
                  password: '111111',
                  username: 'mathieu10',
                  confirmed_at: Time.now)
user_12.save!

user_13 = User.new(email:'alexisss@gmlloiw.com',
                  password: '111111',
                  username: 'mathieu11',
                  confirmed_at: Time.now)
user_13.save!

user_14 = User.new(email:'alexiccsss@gmlloi.com',
                  password: '111111',
                  username: 'mathieu12',
                  confirmed_at: Time.now)
user_14.save!

user_15 = User.new(email:'alxqexisss@gmlloi.com',
                  password: '111111',
                  username: 'mathieu13',
                  confirmed_at: Time.now)
user_15.save!

user_16 = User.new(email:'alecdsxisss@gmlloi.com',
                  password: '111111',
                  username: 'mathieu14',
                  confirmed_at: Time.now)
user_16.save!

user_17 = User.new(email:'alexvfisss@gmlloi.com',
                  password: '111111',
                  username: 'mathieu15',
                  confirmed_at: Time.now)
user_17.save!

user_18 = User.new(email:'alexivdsss@gmlloi.com',
                  password: '111111',
                  username: 'mathieu16',
                  confirmed_at: Time.now)
user_18.save!

youtube = Plateform.new(title:"Youtube",
                        description: "Youtube est cool")
url = "http://res.cloudinary.com/dcncosmzg/image/upload/v1491358851/xhyhydigpazwclgxoql4.png"
youtube.remote_photo_url = url
youtube.save!