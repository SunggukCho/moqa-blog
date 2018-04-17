# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
[
    ["News"],["이벤트"],["월간리포트"]
].each do |x|
    Category.create(name: x[0])
end

user = User.create(email: "admin@in-datalab.com", password: "indatalab0707")
user.add_role :admin