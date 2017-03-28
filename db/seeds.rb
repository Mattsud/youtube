# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.new(email:'mathieu@mathieu.com',
                  password: '111111',
                  admin: true)
user_1.save!

user_2 = User.new(email:'alexis@gmail.com',
                  password: '111111',
                  admin: true)
user_2.save!

category_1 = Category.new(title:'Education',
                          description: 'Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_1.save!

category_2 = Category.new(title:'Short Movie',
                          description: 'Short Movie bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_2.save!

category_3 = Category.new(title:'Lifestyle / People',
                          description: 'Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_3.save!

category_4 = Category.new(title:'Comedy',
                          description: 'Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_4.save!

category_5 = Category.new(title:'Music',
                          description: 'Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_5.save!

category_5 = Category.new(title:'Other',
                          description: 'Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_5.save!

youtube = Plateform.new(title:"Youtube",
                        description: "Youtube est cool")
url = "https://www.leriremedecin.org/images/template/youtube.png"
youtube.remote_photo_url = url
youtube.save!

facebook = Plateform.new(title:"Facebook",
                        description: "Facebook est cool")
url = "https://photos.smugmug.com/Other/Bouton/i-FP7f368/0/S/facebook-logo-rond-S.png"
facebook.remote_photo_url = url
facebook.save!

video_1 = Video.new(title: "1 - WOW! Is This Really Safe Or Fair? Controversial Win Sparks International Debate",
                    link: 'https://www.youtube.com/watch?v=YddFGq8cNes',
                    channel: 'lol',
                    plateform_id:1,
                    category_id:1,
                    user_id:1)

url = "https://i.ytimg.com/vi/Z0X2FyRl-9s/maxresdefault.jpg"
video_1.remote_photo_url = url
video_1.save!

video_2 = Video.new(title: "2 - WOW! Is This Really Safe Or Fair? Controversial Win Sparks Debate",
                    link: 'https://www.youtube.com/watch?v=YddFGq8cNes',
                    channel: 'lol',
                    plateform_id:1,
                    category_id:1,
                    user_id:1)

url = "https://i.ytimg.com/vi/Z0X2FyRl-9s/maxresdefault.jpg"
video_2.remote_photo_url = url
video_2.save!

video_3 = Video.new(title: "3 - WOW! Is This Really Safe Or Fair? Controversial Win Sparks International Debate Sparks International Debate",
                    link: 'https://www.youtube.com/watch?v=YddFGq8cNes',
                    channel: 'lol',
                    category_id:2,
                    plateform_id:2,
                    user_id:2)

url = "https://i.ytimg.com/vi/Z0X2FyRl-9s/maxresdefault.jpg"
video_3.remote_photo_url = url
video_3.save!

video_4 = Video.new(title: "4 - WOW! Is This Really Safe Or Fair? Controversial International Debate",
                    link: 'https://www.youtube.com/watch?v=YddFGq8cNes',
                    channel: 'lol',
                    category_id:2,
                    plateform_id:2,
                    user_id:2)

url = "https://i.ytimg.com/vi/Z0X2FyRl-9s/maxresdefault.jpg"
video_4.remote_photo_url = url
video_4.save!