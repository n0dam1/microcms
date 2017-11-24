10.times do
  title = Faker::Lorem.sentence
  content = Faker::Lorem.paragraph
  Post.create(title: title, content: content)
end
