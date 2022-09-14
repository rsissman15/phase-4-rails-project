# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)




Activity.create([
    { 
        name:'Wine and Dine',
        location: 'New York',
        experience_type:'Food and Drink',
        description:'Wine tasting at vineyards',
        image_url:'https://cdn.securem2.com/commonimages/business/12594/2019/11/saratogawinery-36-display3.jpg'
    },
    {
        name:"NYC Food Tour",
        location: 'New York',
        experience_type:'Food and Drink',
        description:'Food tour throughout NYC',
        image_url:'https://www.nicefoodandwinetours.com/uploads/3/1/3/1/31312321/header_images/1531047859.png'
    }
   

])