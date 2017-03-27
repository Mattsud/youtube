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

video_1 = Video.new(title: "1 - WOW! Is This Really Safe Or Fair? Controversial Win Sparks International Debate",
                    description: "Juke Dock & GurNav Production House Proudly Presents Blockbuster Song Music By SUKH-E MUZICAL DOCTORZ And Lyrics By JAANI . Starring MONICA GILL, The",
                    link: 'https://www.youtube.com/watch?v=YddFGq8cNes',
                    channel: 'lol',
                    category_id:1,
                    user_id:1)

url = "https://i.ytimg.com/vi/Z0X2FyRl-9s/maxresdefault.jpg"
video_1.remote_photo_url = url
video_1.save!

video_2 = Video.new(title: "2 - WOW! Is This Really Safe Or Fair? Controversial Win Sparks Debate",
                    description: "Presents Blockbuster Song Music By SUKH-E MUZICAL DOCTORZ And Lyrics By JAANI . Starring MONICA GILL, The",
                    link: 'https://www.youtube.com/watch?v=YddFGq8cNes',
                    channel: 'lol',
                    category_id:1,
                    user_id:1)

url = "https://i.ytimg.com/vi/Z0X2FyRl-9s/maxresdefault.jpg"
video_2.remote_photo_url = url
video_2.save!

video_3 = Video.new(title: "3 - WOW! Is This Really Safe Or Fair? Controversial Win Sparks International Debate Sparks International Debate",
                    description: "Juke Dock & GurNav Production House Proudly Presents Blockbuster. Starring MONICA GILL, The",
                    link: 'https://www.youtube.com/watch?v=YddFGq8cNes',
                    channel: 'lol',
                    category_id:2,
                    user_id:2)

url = "https://i.ytimg.com/vi/Z0X2FyRl-9s/maxresdefault.jpg"
video_3.remote_photo_url = url
video_3.save!

video_4 = Video.new(title: "4 - WOW! Is This Really Safe Or Fair? Controversial International Debate",
                    description: "Juke Dock & GurNav Production House Proudly Presents Blockbuster Song Music The",
                    link: 'https://www.youtube.com/watch?v=YddFGq8cNes',
                    channel: 'lol',
                    category_id:2,
                    user_id:2)

url = "https://i.ytimg.com/vi/Z0X2FyRl-9s/maxresdefault.jpg"
video_4.remote_photo_url = url
video_4.save!