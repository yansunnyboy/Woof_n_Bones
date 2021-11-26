
require 'faker'

User.create([{ email: 'hi@gmail.com', encrypted_password: 'helloworld', first_name: 'Luke', last_name: 'Skywalker',
               contact_number: '0412439529', location: '123 canberra court, northcutt' },
             { email: 'joe@gmail.com', encrypted_password: 'helloworld', first_name: 'Joe', last_name: 'Mama',
               contact_number: '0412439629', location: '123 adelaide court, appleseed' },
             { email: 'hilly@gmail.com', encrypted_password: 'helloworld', first_name: 'Hillary', last_name: 'Clinton',
               contact_number: '0412439529', location: '123 darwin lane, daylesford' }])

Centre.create([{ name: 'Doggy Home', location: '123 high street', phone_number: '95576165', capacity: 29, user_id: 1 },
               { name: 'Dog House', location: '1023 collins st, melbourne', phone_number: '95676165', capacity: 80,
                 user_id: 3 },
               { name: 'Snoop Dogg', location: '12 jimmy parade, mulgrave', phone_number: '956146165', capacity: 10,
                 user_id: 3 }])

Dog.create([{ name: 'pupper', dog_size: 's', diet: 'meat', breed: 'shiba', desexed: true, vaccination_status: true,
              user_id: 1 },
            { name: 'jim', dog_size: 'm', diet: 'tuna', breed: 'sausage', desexed: true, vaccination_status: true,
              user_id: 2 },
            { name: 'cookie', dog_size: 'l', diet: 'vegan', breed: 'husky', desexed: true, vaccination_status: true,
              user_id: 2 }])




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
