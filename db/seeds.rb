# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ProjectPortfolio.destroy_all
Project.destroy_all
Portfolio.destroy_all
User.destroy_all


ActiveRecord::Base.connection.reset_pk_sequence!('projects')
ActiveRecord::Base.connection.reset_pk_sequence!('portfolios')
ActiveRecord::Base.connection.reset_pk_sequence!('users')
ActiveRecord::Base.connection.reset_pk_sequence!('project_portfolios')


user1 = User.create!({
  name: "Mike Rubin",
  userid: "merubin",
  password: "password",
  email:"mike@rubinsworld.com",
  avatar_url:"http://mike-rubin.com/images/nav/id/rubin_selfie_270.png"
})

user2 = User.create!({
  name: "Jessee Shawl",
  userid: "jshawl",
  password: "password",
  email:"jesse@jshawl.com",
  avatar_url:"https://pbs.twimg.com/profile_images/494612822740197377/4ldXwgN5_400x400.jpeg"
})


project1 = user1.projects.create!({
name:"Mario's Match Game",
header1:"Javascript Project",
header2:"",
description:"Pre-work project for WDI-DC12 Bootcamp. Concentration like game where random cards are displayed and flipped as user choices. This work includes CSS, HTML5 along with Javascript and dynamic DOM manulipuation.
Bonus work to keep score and win and loss was done.",
screen_img_url:"http://mike-rubin.com/images/portfolio/mariomemorygame.jpg",
host_url:"http://www.rubinsworld.com/ga/memory/index.html"
})

project2 = user1.projects.create!({
name:"My Business",
header1:"www.my_business.com",
header2:"",
description:"A basic site designed to implement a basic business website. This project was modeled after a restaurant menu where there is a description shown on selection of a single graphic image. Javascript was implemented to toggle the descriptions on and off.",
screen_img_url:"http://mike-rubin.com/images/portfolio/rubin_biz.jpg",
host_url:"http://www.rubinsworld.com/ga/html/merubin_business_site.html"
})

project3 = user1.projects.create!({
name:"My Blog",
header1:"www.my_blog.com",
header2:"",
description:"A Web Blog site designed to tell a personal story This project introduced page header layouts and navigation, response designs including \"Like\" buttons.",
screen_img_url:"http://mike-rubin.com/images/portfolio/rubin_blog.jpg",
host_url:"http://www.rubinsworld.com/ga/html/merubin_personal_blog.html"
})

project4 = user1.projects.create!({
name:"My Personal Website",
header1:"www.my_website.com",
header2:"",
description:"A Personal Website designed to as a landing page. This was the first project to introduce CSS and HTML5. Site included action buttons with Contract Form",
screen_img_url:"http://mike-rubin.com/images/portfolio/rubin_personal.jpg",
host_url:"http://www.rubinsworld.com/ga/html/merubin_personal_web.html"
})

project5 = user2.projects.create!({
name:"Traffic Light Javascript exercise",
header1:"",
header2:"",
description:"Admissions Exercise Pre-work project for WDI-DC12 Bootcamp. Very first exercise in javascript. This exercise originally was done in js.bin and taught basic troubleshooting and creating new buttons on the screen.",
screen_img_url:"http://mike-rubin.com/images/portfolio/trafficlight.jpg",
host_url:"http://www.rubinsworld.com/ga/trafficlight/index.html"
})

project6 = user2.projects.create!({
name:"ICY BIRDS",
header1:"",
header2:"",
description:"Avoid the frozen snowflakes and the enemy birds. Try to get as shoot as many of the enemy birds as you can!",
screen_img_url:"https://res.cloudinary.com/general-assembly-profiles/image/upload/c_crop,h_899,w_1198,x_0,y_297/v1476281920/y15nvpnhdsv2yb1gtpxm.png",
host_url:"https://thawing-falls-93588.herokuapp.com/"
})

portfolio1 = user1.portfolios.create!({
title:"Mike Rubin's Personal Portfolio",
description:"Welcome to Mike Rubin's Web Development Portfolio. "
})

portfolio2 = user2.portfolios.create!({
title:"Up Dog Web Hosting Portfolio",
description:"Real. Simple.Hosting. Publish your own website for free using Dropbox. "
})

pp1 = ProjectPortfolio.create(project: project1, portfolio: portfolio1)
pp2 = ProjectPortfolio.create(project: project2, portfolio: portfolio1)
pp3 = ProjectPortfolio.create(project: project3, portfolio: portfolio1)
pp4 = ProjectPortfolio.create(project: project4, portfolio: portfolio1)
pp5 = ProjectPortfolio.create(project: project5, portfolio: portfolio2)
pp6 = ProjectPortfolio.create(project: project6, portfolio: portfolio2)
