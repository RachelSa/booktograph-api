# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

10.times do |i|
  Book.create(title: "Harry Potter #{i}")
end

10.times do
  Author.create(name: Faker::Book.author)
end

10.times do
  User.create(name: Faker::App.author)
end

10.times do |i|
  Chapter.create(title: "Chapter #{i}", number: i, book_id: Random.rand(1..10))
end

10.times do
  Review.create(content: "writing my review here...", reaction: Random.rand(1..10), rating: Random.rand(1..10), chapter_id: Random.rand(1..10), user_id: Random.rand(1..10) )
end

10.times do |i|
  BookAuthor.create(book_id: i, author_id: Random.rand(1..10))
end

10.times do |i|
  BookRead.create(book_id: i, user_id: Random.rand(1..10))
end
