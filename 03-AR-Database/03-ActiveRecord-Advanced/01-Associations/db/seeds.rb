# TODO: Write a seed
require 'faker'

5.times do
  new_user = User.create(username: Faker::Name.name, email: Faker::Address)
  rand(5..10).times do
    new_user.posts << Post.create(title: Faker::Source, url: Faker::Internet, votes: Faker::Number)
  end
end
