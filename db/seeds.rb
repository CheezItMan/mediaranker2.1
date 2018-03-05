# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'csv'
require 'awesome_print'

CSV.read('db/media_seeds.csv', headers: true, header_converters: :symbol).each do |line|
  work = Work.new(line.to_h)
  work.user = User.find(1)
  if !work.save
    puts "Unable to save #{work.title}:  #{work.errors.messages}"
  else
    puts "Work:  #{work.title} saved"
  end
end
