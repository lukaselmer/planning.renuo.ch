require 'rubygems'
require 'active_resource'

redmines = [
  ['https://redmine.elmermx.ch/', ENV['REDMINE_USER_1'], ENV['REDMINE_PASSWORD_1'],
  ['https://redmine.renuo.ch/', ENV['REDMINE_USER_2'], ENV['REDMINE_PASSWORD_2'],
  ['https://redmine2.studentbooks.ch.studentbooks2.nine.ch/', ENV['REDMINE_USER_3', ENV['REDMINE_PASSWORD_3'],
]

redmines = redmines.collect do |site, user, password|
  base = Class.new(ActiveResource::Base) do
    self.site = site
    self.user = user
    self.password = password
    self.format = :xml
  end
  timeEntry = Class.new(base) do
    self.model_name = "TimeEntry"
  end
  
  issue = nil #Class.new(base)
  user = nil #Class.new(base)

  [timeEntry, issue, user]

  #class Base < ActiveResource::Base
  #  p Redmine::Site
  #  p Redmine::User
  #  p Redmine::Password
  #  self.site = Redmine::Site
  #  self.user = Redmine::User
  #  self.password = Redmine::Password
  #  self.format = :xml
  #end
  #class TimeEntry < Base; end
  #class Issue < Base; end
  #class User < Base; end
  #[TimeEntry, Issue, User]
end

redmines.each do |timeEntry, issue, user|
  p timeEntry.find(:all)
end

return

# Retrieving issues
#issues = Issue.find(:all)
#p issues.first

all = []
count = -1
offset = 0
puts "Fetching time entries"
while count > 0 || offset == 0 do
  print "."
  new = TimeEntry.find(:all, params: {offset: offset * 100, limit: 100})
  all += new
  count = new.size
  offset += 1
end
puts
puts "Done!"
puts "Found #{all.size} entries!"

# Retrieving an issue
#issue = Issue.find(1)
#puts issue.description
#puts issue.author.name

