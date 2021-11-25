
require 'faker'

50.times do
  User.create!(
    email: Faker::Internet.email,
    encrypted_password: 'password',
    first_name: Faker::Artist.name,
    last_name: Faker::Movies::HarryPotter.spell,
    contact_number: Faker::PhoneNumber.phone_number,
    location: ['1 Elizabeth St, Melbourne, VIC 3000','368 St Kilda Rd, Melbourne, VIC 3004', '141 Station St, Port Melbourne, VIC 3207', '25 Spenser St, Melbourne, VIC 3000', '231 Princes St, Port Melbourne, VIC 3207' ].sample,
    password: 'password',
  )
end
10.times do
  Centre.create!(
    name: Faker::TvShows::Simpsons.location,
    capacity: rand(1..15),
    user_id: rand(35..50),
    phone_number: Faker::PhoneNumber.phone_number,
    location:['1 Elizabeth St, Melbourne, VIC 3000','368 St Kilda Rd, Melbourne, VIC 3004', '141 Station St, Port Melbourne, VIC 3207', '25 Spenser St, Melbourne, VIC 3000', '231 Princes St, Port Melbourne, VIC 3207','56 Elizabeth St, Melbourne, VIC 3000','27 St Kilda Rd, Melbourne, VIC 3004', '41 Station St, Port Melbourne, VIC 3207', '7 Spenser St, Melbourne, VIC 3000', '77 Princes St, Port Melbourne, VIC 3207'].sample
  )
end

50.times do
  Dog.create!(
    name: Faker::Creature::Dog.name,
    dog_size: Faker::Creature::Dog.size,
    user_id: rand(5..40),
    breed: Faker::Creature::Dog.breed,
    vaccination_status: true,
    desexed: true
  )
end
