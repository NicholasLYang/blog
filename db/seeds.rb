# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

user = User.create({ name: "Nicholas", email: "nick@nicholasyang.com", is_admin: true })
articles = Article.create(
  [
    { title: "My article", body: "lorem ipsum dolores", user_id: user.id },
    { title: "My article 2", body: "lorem ipsum dolores", user_id: user.id }
  ]
)

