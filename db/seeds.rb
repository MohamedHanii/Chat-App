# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# User.create(username: "Ahmed", password: "password")
# User.create(username: "Khaled", password: "password")
# User.create(username: "Omar", password: "password")
# User.create(username: "Hisham", password: "password")
# User.create(username: "Ali", password: "password")

Message.create(body: "Hello Everyone", user_id: 1)
Message.create(body: "Check This message", user_id: 2)
Message.create(body: "This is my second message message", user_id: 2)
Message.create(body: "Hey new guy", user_id: 1)
Message.create(body: "Hello there!", user_id: 1)
Message.create(body: "Mock message", user_id: 1)
Message.create(body: "Hello!", user_id: 3)
