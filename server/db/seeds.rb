# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Look.destroy_all
Smell.destroy_all
Taste.destroy_all
User.destroy_all

############################################################
# CREATE COLORS WITH CALRITY AND VISCOSITY PROFILE         #
############################################################
colors = Look.color_names
clarity = [1,2,3,4,5]
viscosity = [1,2,3,4,5]

looks = colors.keys.map {|col| clarity.map {|cla| viscosity.map {|vis| {color: col, clarity: cla, viscosity: vis}}}}.flatten
Look.create(looks)

############################################################
# CREATE SMELL PROFILE                                     #
############################################################

smell_hash = Smell.categories
smells = smell_hash.map {|lo, lo_val| lo_val.map {|lt, lt_val| lt_val.map {|lth_val| {level_one: lo, level_two: lt, level_three: lth_val}}}}.flatten
Smell.create(smells)

############################################################
# CREATE Taste PROFILE                                     #
############################################################

scale = [1,2,3,4,5]
tastes = scale.map{|l1| scale.map{|l2| scale.map{|l3| scale.map{|l4| scale.map{|l5| {sweetness: l1, acidity: l2, tannin: l3, alcohol: l4, body: l5} }}}}}.flatten
Taste.create(tastes)

users = [
  {email: "song@gmail.com", nickname: "Song", password: "cici<3wine"},
  {email: "minha@gmail.com", nickname: "Minha", password: "minha<3wine"}
]
User.create(users)
