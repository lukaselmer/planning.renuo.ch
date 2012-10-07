# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

[["Lukas", 10], ["Diego", 10], ["Ueli", 10]].each do |name, overhead|
  User.create!(name: name, overhead: overhead)
end
