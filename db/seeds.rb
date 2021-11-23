# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!({ email: 'hi@gmail.com', encrypted_password: 'helloworld', first_name: 'Luke', last_name: 'Skywalker',
              contact_number: '0412439529', location: '123 canberra court, northcutt', password: 'password' })

Centre.create!([{ name: 'Doggy Home', location: '123 high street', phone_number: '95576165', capacity: 29, user_id: 1  },
               { name: 'Dog House', location: '1023 collins st, melbourne', phone_number: '95676165', capacity: 80, user_id: 2 },
               { name: 'Snoop Dogg', location: '12 jimmy parade, mulgrave', phone_number: '956146165', capacity: 10, user_id: 1  }])

Dog.create!([{ name: 'pupper', dog_size: 's', diet: 'meat', breed: 'shiba', desexed: true, vaccination_status: true,
              user_id: 1 },
            { name: 'jim', dog_size: 'm', diet: 'tuna', breed: 'sausage', desexed: true, vaccination_status: true,
              user_id: 1 },
            { name: 'cookie', dog_size: 'l', diet: 'vegan', breed: 'husky', desexed: true, vaccination_status: true,
              user_id: 1 }])
