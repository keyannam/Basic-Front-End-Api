require 'securerandom'
require 'faker'

 ikh = User.create!  username: "ikh",
               email: "sample@example.com"
               password: "12345678",
               password_confirmation: "12345678",
               token: SecureRandom.hex(8)

 km = User.create!  username: "km",
               email: "example@sample.com"
               password: "12345678",
               password_confirmation: "12345678",
               token: SecureRandom.hex(8)


   users = [ikh, km]




   10.times do
     sshhh = Sshhh.new
     sshhh.user = users.sample
     sshhh.email = Faker::Internet.email
     sshhh.secrets = Faker::Lorem.sentence(3)
     sshhh.save!
   end
