# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

id_types = ['national', 'resident', 'foreign'] # this id_types is bacause in the documentation of faker don't have this kind of types 

JudokaCourse.destroy_all
SenseiCourse.destroy_all
Category.destroy_all
Course.destroy_all
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
  judo_test2 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado', weight: 55, height: 170, course_naveta: 50, speed: 70, flexibility: 95, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test3 = JudoTest.create!(date_of_test: '2009-04-12',  description: 'Muy bien hecha la prueba',  weight: 70, height: 161, course_naveta: 55, speed: 80, flexibility: 100, push_up: 90, ABS: 95, vertical_jump: 60) 
  judo_test4 = JudoTest.create!(date_of_test: '2001-12-05',  description: 'Muy bien sigue asi ',  weight: 65, height: 160, course_naveta: 52, speed: 60, flexibility: 90, push_up: 80, ABS: 100, vertical_jump: 50) 
  judo_test5 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado', weight: 70, height: 162, course_naveta: 50, speed: 70, flexibility: 95, push_up: 85, ABS: 100, vertical_jump: 60)
  judo_test6 = JudoTest.create!(date_of_test: '2009-04-12',  description: 'Muy bien hecha la prueba',  weight: 70, height: 161, course_naveta: 55, speed: 80, flexibility: 100, push_up: 90, ABS: 95, vertical_jump: 60) 
  judo_test7 = JudoTest.create!(date_of_test: '2007-12-05',  description: 'Muy bien sigue asi ',  weight: 65, height: 160, course_naveta: 52, speed: 60, flexibility: 90, push_up: 80, ABS: 100, vertical_jump: 50) 
  judo_test8 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado', weight: 55, height: 165, course_naveta: 60, speed: 70, flexibility: 95, push_up: 85, ABS: 100, vertical_jump: 60)
  judo_test9 = JudoTest.create!(date_of_test: '2010-04-12',  description: 'Muy bien hecha la prueba',  weight: 70, height: 161, course_naveta: 55, speed: 80, flexibility: 100, push_up: 90, ABS: 95, vertical_jump: 60) 
  judo_test10 = JudoTest.create!(date_of_test: '2007-12-05',  description: 'Muy bien sigue asi ',  weight: 65, height: 160, course_naveta: 52, speed: 60, flexibility: 90, push_up: 80, ABS: 100, vertical_jump: 50) 
  judo_test11 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado', weight: 49, height: 163, course_naveta: 70, speed: 70, flexibility: 95, push_up: 85, ABS: 100, vertical_jump: 60)
  judo_test12 = JudoTest.create!(date_of_test: '2000-04-12',  description: 'Muy bien hecha la prueba',  weight: 70, height: 161, course_naveta: 55, speed: 80, flexibility: 100, push_up: 90, ABS: 95, vertical_jump: 60) 
  judo_test13 = JudoTest.create!(date_of_test: '2007-12-05',  description: 'Muy bien sigue asi ',  weight: 65, height: 160, course_naveta: 52, speed: 60, flexibility: 90, push_up: 80, ABS: 100, vertical_jump: 70) 
  judo_test14 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado', weight: 55, height: 150, course_naveta: 55, speed: 70, flexibility: 95, push_up: 85, ABS: 100, vertical_jump: 60)
  judo_test15 = JudoTest.create!(date_of_test: '2004-04-12',  description: 'No aprobado',  weight: 70, height: 161, course_naveta: 55, speed: 80, flexibility: 100, push_up: 90, ABS: 95, vertical_jump: 60) 
  judo_test16 = JudoTest.create!(date_of_test: '2001-02-05',  description: 'Muy bien sigue asi ',  weight: 65, height: 160, course_naveta: 52, speed: 60, flexibility: 90, push_up: 80, ABS: 100, vertical_jump: 50) 
  judo_test17 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado', weight: 60, height: 170, course_naveta: 50, speed: 70, flexibility: 95, push_up: 85, ABS: 100, vertical_jump: 60)
  judo_test18 = JudoTest.create!(date_of_test: '2004-04-12',  description: 'Muy bien hecha la prueba',  weight: 70, height: 161, course_naveta: 55, speed: 80, flexibility: 100, push_up: 90, ABS: 95, vertical_jump: 60) 
  judo_test19 = JudoTest.create!(date_of_test: '2001-12-05',  description: 'Muy bien sigue asi ',  weight: 65, height: 160, course_naveta: 52, speed: 60, flexibility: 90, push_up: 80, ABS: 100, vertical_jump: 50) 
  judo_test20 = JudoTest.create!(date_of_test: '2003-05-06',  description: 'Aprovado', weight: 60, height: 170, course_naveta: 50, speed: 70, flexibility: 95, push_up: 85, ABS: 100, vertical_jump: 60)
  judo_test21 = JudoTest.create!(date_of_test: '2004-04-12',  description: 'Muy bien hecha la prueba',  weight: 70, height: 161, course_naveta: 55, speed: 80, flexibility: 100, push_up: 90, ABS: 95, vertical_jump: 60) 
  judo_test22 = JudoTest.create!(date_of_test: '2001-12-05',  description: 'Muy bien sigue asi ',  weight: 65, height: 160, course_naveta: 52, speed: 60, flexibility: 90, push_up: 80, ABS: 100, vertical_jump: 50) 
  judo_test23 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado', weight: 55, height: 156, course_naveta: 50, speed: 70, flexibility: 95, push_up: 85, ABS: 100, vertical_jump: 60)
  judo_test24 = JudoTest.create!(date_of_test: '2000-04-12',  description: 'Muy bien hecha la prueba',  weight: 70, height: 161, course_naveta: 55, speed: 80, flexibility: 100, push_up: 90, ABS: 95, vertical_jump: 60) 
  judo_test25 = JudoTest.create!(date_of_test: '2001-12-05',  description: 'Muy bien sigue asi ',  weight: 65, height: 160, course_naveta: 52, speed: 60, flexibility: 90, push_up: 80, ABS: 100, vertical_jump: 50) 

  judo_test26 = JudoTest.create!(date_of_test: '2003-12-05',  description: 'Aprovado', weight: 55, height: 170, course_naveta: 50, speed: 70, flexibility: 95, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test28 = JudoTest.create!(date_of_test: '2003-12-08',  description: 'No Aprovado', weight: 55, height: 160, course_naveta: 50, speed: 70, flexibility: 95, push_up: 100, ABS: 100, vertical_jump: 60) 
  judo_test27 = JudoTest.create!(date_of_test: '2003-12-07',  description: 'No Aprovado', weight: 55, height: 160, course_naveta: 50, speed: 70, flexibility: 95, push_up: 100, ABS: 100, vertical_jump: 60) 
  judo_test29 = JudoTest.create!(date_of_test: '2003-12-09',  description: 'No Aprovado', weight: 55, height: 160, course_naveta: 50, speed: 70, flexibility: 95, push_up: 100, ABS: 100, vertical_jump: 60) 
  judo_test30 = JudoTest.create!(date_of_test: '2003-12-10',  description: 'No Aprovado', weight: 57, height: 160, course_naveta: 60, speed: 70, flexibility: 95, push_up: 100, ABS: 100, vertical_jump: 60) 
  judo_test31 = JudoTest.create!(date_of_test: '2003-12-11',  description: 'No Aprovado', weight: 57, height: 170, course_naveta: 60, speed: 70, flexibility: 95, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test32 = JudoTest.create!(date_of_test: '2003-12-12',  description: 'No Aprovado', weight: 57, height: 170, course_naveta: 60, speed: 70, flexibility: 95, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test33 = JudoTest.create!(date_of_test: '2003-12-13',  description: 'No Aprovado', weight: 57, height: 170, course_naveta: 60, speed: 70, flexibility: 95, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test34 = JudoTest.create!(date_of_test: '2003-12-13',  description: 'Aprovado', weight: 58, height: 180, course_naveta: 70, speed: 70, flexibility: 100, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test35 = JudoTest.create!(date_of_test: '2003-12-12',  description: 'Aprovado', weight: 58, height: 180, course_naveta: 70, speed: 70, flexibility: 100, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test36 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado', weight: 58, height: 180, course_naveta: 70, speed: 70, flexibility: 100, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test37 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado', weight: 58, height: 180, course_naveta: 70, speed: 70, flexibility: 100, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test38 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado', weight: 59, height: 150, course_naveta: 80, speed: 70, flexibility: 95, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test39 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado', weight: 59, height: 150, course_naveta: 80, speed: 70, flexibility: 95, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test40 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado', weight: 59, height: 150, course_naveta: 80, speed: 70, flexibility: 95, push_up: 70, ABS: 100, vertical_jump: 60) 
  judo_test41 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado', weight: 59, height: 150, course_naveta: 80, speed: 70, flexibility: 95, push_up: 70, ABS: 100, vertical_jump: 60) 
  judo_test42 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado', weight: 55, height: 190, course_naveta: 50, speed: 70, flexibility: 90, push_up: 70, ABS: 100, vertical_jump: 60) 
  judo_test43 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado', weight: 60, height: 190, course_naveta: 10, speed: 70, flexibility: 90, push_up: 70, ABS: 100, vertical_jump: 60) 
  judo_test44 = JudoTest.create!(date_of_test: '2003-12-06',  description: 'Aprovado', weight: 60, height: 190, course_naveta: 10, speed: 70, flexibility: 90, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test45 = JudoTest.create!(date_of_test: '2003-12-05',  description: 'Aprovado', weight: 60, height: 190, course_naveta: 10, speed: 70, flexibility: 90, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test46 = JudoTest.create!(date_of_test: '2003-12-05',  description: 'Aprovado', weight: 60, height: 170, course_naveta: 10, speed: 70, flexibility: 95, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test47 = JudoTest.create!(date_of_test: '2003-12-05',  description: 'No Aprovado', weight: 55, height: 175, course_naveta: 20, speed: 70, flexibility: 85, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test48 = JudoTest.create!(date_of_test: '2003-12-05',  description: 'No Aprovado', weight: 55, height: 175, course_naveta: 20, speed: 70, flexibility: 85, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test49 = JudoTest.create!(date_of_test: '2003-12-05',  description: 'No Aprovado', weight: 55, height: 175, course_naveta: 20, speed: 70, flexibility: 85, push_up: 85, ABS: 100, vertical_jump: 60) 
  judo_test50 = JudoTest.create!(date_of_test: '2003-12-05',  description: 'No Aprovado', weight: 55, height: 175, course_naveta: 20, speed: 70, flexibility: 85, push_up: 85, ABS: 100, vertical_jump: 60) 

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

  course = Course.create!(name: 'Pruebas Fisicas', description: 'Hora: 7:00pm, días: Luneas a Viernes', dojo_id: Dojo.all.sample.id)
  course1 = Course.create!(name: 'Pruebas de Tecnicas', description: 'Hora: 6:00pm, días: Luneas a Viernes', dojo_id: Dojo.all.sample.id)
  course2 = Course.create!(name: 'Combates', description: 'Hora: 5:00pm, días: Luneas a Viernes', dojo_id: Dojo.all.sample.id)
  course3 = Course.create!(name: 'Quiz', description: 'Hora: 4:00pm, días: Luneas a Viernes', dojo_id: Dojo.all.sample.id)
  course4 = Course.create!(name: 'Pruebas de conociento', description: 'Hora: 9:00pm, días: Luneas a Viernes', dojo_id: Dojo.all.sample.id)
  
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