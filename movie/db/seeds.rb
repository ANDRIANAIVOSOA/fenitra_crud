# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Movie.destroy_all
Director.destroy_all

d_1 = Director.create(first_name:'Matieu', last_name:'apotre')
d_2 = Director.create(first_name:'Marc', last_name:'apotre')
d_3 = Director.create(first_name:'Luc', last_name:'apotre')
@id_1 = d_1.id
@id_2 = d_2.id
@id_3 = d_3.id
f_1 = Movie.create(title:'c', release_year:2017, director_id:@id_1)
f_2 = Movie.create(title:'d', release_year:2011, director_id:@id_3)
f_3 = Movie.create(title:'e', release_year:2013, director_id:@id_1)
f_4 = Movie.create(title:'f', release_year:2012, director_id:@id_3)
f_5 = Movie.create(title:'g', release_year:2012, director_id:@id_2)