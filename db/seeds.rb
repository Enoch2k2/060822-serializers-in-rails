# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

the_matrix = Movie.create( title: "The Matrix", description: "A movie about technical support", release_date: "2000-10-15")

bad_boys = Movie.create(title: "Bad Boys", description: "A movie where this boy tries to date a police officer's daughter, but they weren't having it.", release_date: "2001-06-04")

finding_nemo = Movie.create(title: "Finding Nemo", description: "They found him", release_date: "2004-10-22")

finding_dori = Movie.create(title: "Finding Dori", description: "She never remembered being lost in the first place", release_date: "2008-11-22")

avatar_the_last_airbender = Movie.create(title: "Avatar: The Last Airbender", description: "This movie got a lot of bad reviews for being pretty bad", release_date: "2005-05-10")

deadpool = Movie.create(title: "Deadpool", description: "Ryan 
Reynolds plays a good badguy, or is it a bad goodguy? I don't think anyone really knows.", release_date: "2012-12-16")

yes_man = Movie.create(title: "Yes Man", description: "Jim Carry agrees to everything and eventually decides that was a bad idea.", release_date: "2001-03-25")

netflix = Platform.create(name: "Netflix", monthly_cost: "17")
prime = Platform.create(name: "Prime", monthly_cost: "10")
hbo_max = Platform.create(name: "HBO Max", monthly_cost: "7")
disney_plus = Platform.create(name: "Disney Plus", monthly_cost: "8")

netflix.update(movies: [ the_matrix, yes_man, avatar_the_last_airbender, bad_boys])
prime.update(movies: [ the_matrix, yes_man, avatar_the_last_airbender, bad_boys, finding_dori, finding_nemo])
hbo_max.update(movies: [the_matrix, yes_man, bad_boys])
disney_plus.update(movies: [finding_dori, finding_nemo, deadpool])