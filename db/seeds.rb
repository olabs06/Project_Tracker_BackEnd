# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
User1 = User.create(name: "Nii", email_address:"nii@gmail.com", password: "123", user_type:"admin", phone_number:"12345")
User2 = User.create(name: "Simeon", email_address:"simeon@gmail.com", password: "123", user_type:"admin", phone_number:"13345")

project1 = Project.create(title:"Project Tracker", cohort: 2022, image_url: "/Users/niistephens/Development/code/phase-5/project-tracker-backend/depositphotos_133352010-stock-illustration-default-placeholder-man-and-woman.jpg", github_link:"",description:"", user_id:"user1.id")
project2 = Project.create(title:"Recipe Tracker", cohort: 2021, image_url: "/Users/niistephens/Development/code/phase-5/project-tracker-backend/depositphotos_133352010-stock-illustration-default-placeholder-man-and-woman.jpg", github_link:"",description:"", user_id:"user2.id")
project3 = Project.create(title:"Expenditure Tracker", cohort: 2020, image_url: "/Users/niistephens/Development/code/phase-5/project-tracker-backend/depositphotos_133352010-stock-illustration-default-placeholder-man-and-woman.jpg", github_link:"",description:"", user_id:"user1.id")
