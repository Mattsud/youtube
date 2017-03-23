# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user_1 = User.new(email:'mathieu@gmail.com', password: '111111', password_confirmation: '111111')
user_1.save!

user_2 = User.new(email:'alexis@gmail.com', password: '111111', password_confirmation: '111111')
user_2.save!

category_1 = Category.new(title:'Education', description: 'Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_1.save!

category_2 = Category.new(title:'Short Movie', description: 'Short Movie bien bien Education bien bien Education bien bien Education bien bien Education bien bien Education bien bien')
category_2.save!

video_1 = Video.new(title: "1 - WOW! Is This Really Safe Or Fair? Controversial Win Sparks International Debate", description: "Juke Dock & GurNav Production House Proudly Presents Blockbuster Song Music By SUKH-E MUZICAL DOCTORZ And Lyrics By JAANI . Starring MONICA GILL, The ")
video_1.save!

video_2 = Video.new(title: "2 - WOW! Is This Really Safe Or Fair? Controversial Win Sparks Debate", description: "Presents Blockbuster Song Music By SUKH-E MUZICAL DOCTORZ And Lyrics By JAANI . Starring MONICA GILL, The")
video_2.save!

video_3 = Video.new(title: "3 - WOW! Is This Really Safe Or Fair? Controversial Win Sparks International Debate Sparks International Debate", description: "Juke Dock & GurNav Production House Proudly Presents Blockbuster. Starring MONICA GILL, The")
video_3.save!

video_4 = Video.new(title: "4 - WOW! Is This Really Safe Or Fair? Controversial International Debate", description: "Juke Dock & GurNav Production House Proudly Presents Blockbuster Song Music The")
video_4.save!

video_category_1 = VideoCategory.new(video_id:1, category_id:1)
video_category_1.save!

video_category_2 = VideoCategory.new(video_id:2, category_id:1)
video_category_2.save!

video_category_3 = VideoCategory.new(video_id:3, category_id:2)
video_category_3.save!

video_category_4 = VideoCategory.new(video_id:4, category_id:2)
video_category_4.save!

user_video_1 = UserVideo.new(user_id:1, video_id:1)
user_video_1.save!

user_video_2 = UserVideo.new(user_id:1, video_id:2)
user_video_2.save!

user_video_3 = UserVideo.new(user_id:1, video_id:3)
user_video_3.save!

user_video_4= UserVideo.new(user_id:2, video_id:4)
user_video_4.save!