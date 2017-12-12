metal, jazz = Category.create([{ name: 'metal' }, { name: 'jazz' }])

melodic, black = metal.children.create([{ name: 'melodic' }, { name: 'black' }])
melodic.children.create([{ name: 'melodic-death' }, { name: 'melodic-speed' }])
black.children.create([{ name: 'symphonic-black' }, { name: 'melodic-black' }])

swing, modern = jazz.children.create([{ name: 'swing' }, { name: 'modern' }])

categories = [metal, jazz, melodic, black, swing, modern]

10.times do
  title = Faker::Lorem.sentence
  content = Faker::Lorem.paragraph
  category_id = categories.sample.id
  Post.create(title: title, content: content, category_id: category_id)
end
