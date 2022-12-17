# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)


group1 =Group.create(group_name: "A")
group2 =Group.create(group_name: "B")


project1 = Project.create(title:"Project Tracker", cohort: "2022", image_url: "https://cdn.pixabay.com/photo/2017/01/31/21/23/avatar-2027366__340.png", github_link:"",description:"")
project2 = Project.create(title:"Recipe Tracker", cohort: "2021", image_url: "https://cdn.pixabay.com/photo/2017/01/31/21/23/avatar-2027366__340.png", github_link:"",description:"")
project3 = Project.create(title:"Expenditure Tracker", cohort: "2020", image_url: "https://cdn.pixabay.com/photo/2017/01/31/21/23/avatar-2027366__340.png", github_link:"",description:"")


user1 = User.create(name: "Nii", email_address:"nii@gmail.com", password: "12345", user_type:"admin", phone_number:"12345", project_id:project1.id, group_id:group2.id)
user2 = User.create(name: "Simeon", email_address:"simeon@gmail.com", password: "23455", user_type:"group_leader", phone_number:"13345", project_id:project2.id, group_id:group1.id)
user3 = User.create(name: "Ibrahim", email_address:"ibrahim@gmail.com", password: "34566", user_type:"student", phone_number:"13345", project_id:project2.id, group_id:group1.id)