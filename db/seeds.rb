# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

trainee_list = [
["Nguyen Van M","nguyenvanM@gmail.com","123456","123456"],
["Nguyen Van N","nguyenvanN@gmail.com","123456","123456"],
["Nguyen Van D","nguyenvand@gmail.com","123456","123456"],
["Nguyen Van E","nguyenvane@gmail.com","123456","123456"],

]
trainee_list.each do |trainee|
	Trainee.create( :name=>trainee[0], :email=>trainee[1], :password=>trainee[2], :password_confirmation=>trainee[3])
end



#Trainee.create(name: 'Germany', email: "Nguyen Van A", password: "123456")
#Trainee.create(name: 'Germany1', email: "Nguyen Van A1", password: "123456")
#Trainee.create(name: 'Germany2', email: "Nguyen Van A2", password: "123456")
#Trainee.create(name: 'Germany3', email: "Nguyen Van A3", password: "123456")
#Trainee.create(name: 'Germany4', email: "Nguyen Van A4", password: "123456")