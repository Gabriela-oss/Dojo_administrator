# MiDojoCR

Este proyecto está dirigido a las academias de Judo, las cuales se les denomina Dojo, para facilitar la administración de dichos dojos, sus sensei pueden controlar la información de los judokas. Almacenando cada una de sus pruebas físicas, nos permite ver el nivel de cada judoka y cada sensei, a que dojo pertenece. Gracias a esta app no tienen la necesidad de hacer todo en papel o Excel y a su vez ahorrar tiempo con su facilidad de manejo, para en un futuro extender la app a otros deportes.

#Dependencias

* Se utilizaron las versiones de `Ruby 2.7.2` y `Rails 6.1.3` para crear la aplicación.

* La base de datos empleada es PostgreSQL, por lo tanto para poder utilizar la aplicaión se tienen que correr los siguientes comandos:

`rails db:create`

`rails db_migrate`
 
`rails db:seed`

* Las gemas utilizadas son las siguientes: 

* [gem 'devise'](https://github.com/heartcombo/devise "Devise")

* [gem 'chartkick'](https://github.com/ankane/chartkick "Chartkick")
  
* [gem 'image_processing'](https://github.com/rails/rails/tree/main/activestorage "Active Storage")

* [gem 'activeadmin'](https://github.com/activeadmin/activeadmin "Active Admin")

* [gem 'faker'](https://github.com/faker-ruby/faker "Faker")

* [gem 'rails-erd'](https://github.com/voormedia/rails-erd "Rails ERD")

Recuerde correr `bundle install` para instalar las gemas.

* Esta aplicación utiliza Yarn como dependencia por esta razón se debe de correr `yarn install`

# Último paso:

* Para correr la app y asegurarse que todo se haya instalado de manera correcta se debe de correr el servidor con el comando `rails s`