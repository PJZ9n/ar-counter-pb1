# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

100.times do
  posts = []
  content = Faker::Lorem.paragraph(sentence_count: 500)
  1000.times do
    posts << { content: content, published: [true, false].sample, featured: [true, false].sample }
  end
  Post.insert_all(posts)
end
