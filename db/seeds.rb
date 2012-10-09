# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.delete_all
Project.delete_all
Milestone.delete_all
PlannedTime.delete_all

[["Lukas", 10], ["Peter", 10], ["Mark", 10]].each do |name, overhead|
  User.create!(name: name, overhead: overhead)
end
users = {}
User.all.each { |v| users[v.name] = v }

%w(ProjectA ProjectB ProjectC).each { |v| Project.create!(name: v) }


[
    ["Lukas", 1, 15], ["Lukas", 2, 20], ["Lukas", 3, 14], ["Lukas", 4, 10], ["Lukas", 5, 10],
    ["Peter", 1, 10], ["Peter", 2, 18], ["Peter", 3, 14], ["Peter", 4, 12], ["Peter", 5, 10],
    ["Mark", 1, 12], ["Mark", 2, 18], ["Mark", 3, 14], ["Mark", 4, 15], ["Mark", 5, 10],
].each do |user_name, kw_offset, hours|
  PlannedTime.create!(user: users[user_name], when: Time.now + kw_offset.days, hours: hours)
end

projects = Project.all
[
    [0, "SP1", 2, 25], [0, "SP2", 4, 65.5],
    [1, "Deployment", 3, 28.5],
    [2, "Deployment", 5, 50],

].each do |project_index, name, kw_offset, hours|
  Milestone.create!(project: projects[project_index], name: name, when: Time.now + kw_offset.days, hours: hours)
end
