# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create(name: "Nii", email_address:"nii@gmail.com", user_type:"admin", phone_number:"12345")
user2 = User.create(name: "Simeon", email_address:"simeon@gmail.com", user_type:"admin", phone_number:"13345")

cohort1 =Cohort.create(year: 2022, user_id:user1.id)
cohort2 =Cohort.create(year: 2021, user_id:user2.id)

group1 =Group.create(group_name: "A", group_members: "Abdul malik, Ibrahim, Simeon", user_id:user2.id, project_id:project1.id)
group2 =Group.create(group_name: "B", group_members: "George, Nosa, Ben", user_id:user1.id, project_id:project2.id)


project1 = Project.create(title:"Project Tracker", image_url: "/Users/niistephens/Development/code/phase-5/project-tracker-backend/depositphotos_133352010-stock-illustration-default-placeholder-man-and-woman.jpg", github_link:"",description:"", user_id:user1.id, group_id:group2.id)
project2 = Project.create(title:"Recipe Tracker",  image_url: "/Users/niistephens/Development/code/phase-5/project-tracker-backend/depositphotos_133352010-stock-illustration-default-placeholder-man-and-woman.jpg", github_link:"",description:"", user_id:user2.id, group_id:group1.id)
project3 = Project.create(title:"Expenditure Tracker", image_url: "/Users/niistephens/Development/code/phase-5/project-tracker-backend/depositphotos_133352010-stock-illustration-default-placeholder-man-and-woman.jpg", github_link:"",description:"", user_id:user1.id, group_id:group2.id)

