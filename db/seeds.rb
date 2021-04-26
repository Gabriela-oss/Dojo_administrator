# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

id_types = ['national', 'resident', 'foreign'] 
Sensei.destroy_all
Judoka.destroy_all
Dojo.destroy_all

  Dojo.create!(name: 'Judo Nobe No Suke', email: 'judo@gmail.com', address: 'Ciudad Colon')

  74.times do
  sensei = Sensei.create!(
  email: Faker::Internet.email, 
  password: 123123, 
  name_with_middle: Faker::Name.name_with_middle,
  last_name: Faker::Name.last_name, 
  surname: Faker::Name.last_name, 
  id_type: id_types.shuffle.first, 
  nationality: Faker::Nation.nationality,
  id_card:Faker::Number.number(digits: 9), 
  phone_number: Faker::PhoneNumber.cell_phone_in_e164,
  photo: Faker::Avatar.image(size: "50x50"))

   # puts "Sensei has been created #{sensei.name_with_middle}" 
  end

  74.times do
    judoka = Judoka.create!(
    email: Faker::Internet.email, 
    password: 123123, 
    name_with_middle: Faker::Name.name_with_middle, 
    last_name: Faker::Name.last_name , 
    surname: Faker::Name.last_name, 
    date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), 
    id_type: id_types.shuffle.first, 
    nationality: Faker::Nation.nationality, 
    id_card: Faker::Number.number(digits: 9), 
    address: Faker::Address.full_address, 
    phone_number: Faker::PhoneNumber.cell_phone_in_e164, 
    parental_or_responsibility:Faker::FunnyName.two_word_name,   
    start_date: Faker::Date.in_date_period, 
    photo: Faker::Avatar.image(size: "50x50"),
    dojo_id: Dojo.last.id
    )
    #puts "Judokas has been created #{judoka.name_with_middle}"
  end
