# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

id_types = ['national', 'resident', 'foreign'] # this id_types is bacause in the documentation of faker don't have this kind of types 

Category.destroy_all
Sensei.destroy_all
Judoka.destroy_all
Level.destroy_all
Dojo.destroy_all
JudoTest.destroy_all


  dojo = Dojo.create!(name: 'Judo Nobe No Suke', email: 'judo@gmail.com', address: 'Ciudad Colon')
  dojo1 = Dojo.create!(name: 'Alajuela codea', email: 'sanchoba04@gmail.com', address: 'Alajuela')
  dojo2 = Dojo.create!(name: 'Avenida 04', email: 'beto_bro@hotmail.com', address: 'Cartago')
  dojo3 = Dojo.create!(name: 'Bushi no Tamashii', email: 'joucascantevar@gmail.com', address: 'Brasil de Mora')
  dojo4 = Dojo.create!(name: 'Cano Judo Club', email: 'canojudoclub@hotmail.com', address: 'Alajuela')

  judo_test = JudoTest.create!(date_of_test: '2000-04-12',  description: 'Muy bien hecha la prueba',  weight: 70, height: 161, course_naveta: 55, speed: 80, flexibility: 100, push_up: 90, ABS: 95, vertical_jump: 60) 

  judo_test1 = JudoTest.create!(date_of_test: '2001-12-05',  description: 'Muy bien sigue asi ',  weight: 65, height: 160, course_naveta: 52, speed: 60, flexibility: 90, push_up: 80, ABS: 100, vertical_jump: 50) 

  judo_test2 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado',  weight: 55, height: 170, course_naveta: 50, speed: 70, flexibility: 95, push_up: 85, ABS: 100, vertical_jump: 60) 
  
  levels = Level.create!(name:' blanco')
  levels1 = Level.create!(name: 'amarillo')
  levels2 = Level.create!(name: 'naranja')
  levels3 = Level.create!(name: 'verde')
  levels4 = Level.create!(name: 'azul')
  levels5 = Level.create!(name: 'marron')
  levels6 = Level.create!(name: 'negro-1er_dan')
  levels7 = Level.create!(name: 'negro-2do_dan')
  levels8 = Level.create!(name: 'negro-3er_dan')
  levels9 = Level.create!(name: 'negro-4to_dan')
  levels10 = Level.create!(name: 'rojo-6to_dan')
  levels11 = Level.create!(name: 'rojo-7mo_dan')
  levels12 = Level.create!(name: 'rojo-8vo_dan')
  levels13 = Level.create!(name: 'rojo-9no_dan')
  levels14 = Level.create!(name: 'rojo-10mo_dan')
  levels15 = Level.create!(name: 'negro-5to_dan')
  
  categories = Category.create!(name:'infantil')
  categories1 = Category.create!(name: 'cadete')
  categories2 = Category.create!(name: 'junior')
  categories3 = Category.create!(name: 'senior')
  categories4 = Category.create!(name: 'sensei')

  10.times do
  sensei = Sensei.create!(
  email: Faker::Internet.email, 
  password: 123123, 
  name: Faker::Name.first_name, 
  last_name: Faker::Name.last_name, 
  surname: Faker::Name.last_name, 
  id_type: id_types.sample, 
  level_id: Level.all.sample.id,
  judo_test_id: JudoTest.all.sample.id,  
  nationality: Faker::Nation.nationality,
  id_card:Faker::Number.number(digits: 9), 
  phone_number: Faker::PhoneNumber.cell_phone_in_e164)
  puts "Sensei was created with id: #{sensei.id}"
  end

  50.times do
    judoka = Judoka.create!(
    email: Faker::Internet.email, 
    password: 123123, 
    name: Faker::Name.first_name, 
    last_name: Faker::Name.last_name, 
    surname: Faker::Name.last_name, 
    date_of_birth: Faker::Date.birthday(min_age: 18, max_age: 65), 
    level_id: Level.all.sample.id,
    judo_test_id: JudoTest.all.sample.id,
    id_type: id_types.sample, 
    nationality: Faker::Nation.nationality, 
    id_card: Faker::Number.number(digits: 9), 
    address: Faker::Address.full_address, 
    phone_number: Faker::PhoneNumber.cell_phone_in_e164, 
    parental_or_responsibility:Faker::FunnyName.two_word_name,   
    start_date: Faker::Date.in_date_period,
    dojo_id: Dojo.all.sample.id)
    puts "Judoka was created with id: #{judoka.id}"
  end

  
  
#Sensei.create!(email: 'admin@example.com', password: 'password') if Rails.env.development?