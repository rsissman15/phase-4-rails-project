# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)




Activity.create([
    { 
        name:'Statue of Liberty Tour',
        price:100,
        location: 'New York',
        experience_type:'Sightseeing',
        description:'Private tour of Statue of Liberty',
        image_url:'https://cdn.britannica.com/82/183382-050-D832EC3A/Detail-head-crown-Statue-of-Liberty-New.jpg'
    },
    {   name:'The Metropolitan Museum of Art',
        price:15,
        location: 'New York',
        experience_type:'Sightseeing',
        description:'Tour of the MET',
        image_url:'https://media.cntraveler.com/photos/55d362f337284fb1079ccc4b/16:9/w_2560%2Cc_limit/metropolitan-museum-of-art-new-york-city.jpg'

    }

])
# amark096User=User.first
# wineAndDine=Activity.first
# secondActivity=Activity.second


# #Reservation.create(date:Date.today, user:amark096User, activity:wineAndDine )
# Reservation.create(date:3.days.from_now, user:amark096User, activity:secondActivity )