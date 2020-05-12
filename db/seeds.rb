# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(username:"Santosh1",password:"password1") 
User.create(username:"Santosh2",password:"password1") 
User.create(username:"Santosh3",password:"password1") 
User.create(username:"Santosh4",password:"password1") 
User.create(username:"Santosh5",password:"password1") 
User.create(username:"Santosh6",password:"password1") 
User.create(username:"Santosh7",password:"password1") 
User.create(username:"Santosh8",password:"password1") 
User.create(username:"Santosh9",password:"password1") 

Message.create(body:"Hi, This is the first message!!", user_id:9)
Message.create(body:"Hi, This is the second message!!", user_id:User.last)
Message.create(body:"Hi, This is the third message!!", user_id:7)
Message.create(body:"Hi, This is the fourth message!!", user_id:3)
Message.create(body:"Hi, This is the fifth message!!", user_id:User.first)