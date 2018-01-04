# categories
metal, jazz = Category.create([{ name: 'metal' }, { name: 'jazz' }])

melodic, black = metal.children.create([{ name: 'melodic' }, { name: 'black' }])
melodic.children.create([{ name: 'melodic-death' }, { name: 'melodic-speed' }])
black.children.create([{ name: 'symphonic-black' }, { name: 'melodic-black' }])

swing, modern = jazz.children.create([{ name: 'swing' }, { name: 'modern' }])

categories = [metal, jazz, melodic, black, swing, modern]

# users
password = 'password'
User.create!(email: 'hoge@foo.bar', password: password, password_confirmation: password, role: 1)
User.create!(email: 'fuga@foo.bar', password: password, password_confirmation: password, role: 0)
8.times do
  email = Faker::Internet.email
  User.create!(email: email, password: password, password_confirmation: password, role: 0)
end

users = User.order(:created_at).take(3)

# posts
30.times do
  title = Yoshida::Text.sentence
  content = Yoshida::Text.sentences(10).join
  category_id = categories.sample.id
  users.each do |user|
    user.posts.create!(title: title, content: content, category_id: category_id)
  end
end
