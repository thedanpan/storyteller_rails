require 'faker'

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# one User has many stories
# one Genre has many stories


# create some genres
sample_genres = %w(Autobiography Biography Childrens Crime Fantasy Horror Humor Mystery Poetry Romance Scifi Travel)

sample_genres.each do |genre|
  Genre.create(name: genre)
end

genres = Genre.all


# create some users
10.times do
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    )
end

users = User.all



#create some stories
for i in users
  10.times do
    i.stories.create(
      title: Faker::Lorem.word,
      content: Faker::Lorem.paragraph,
      fiction: [true,false].sample,
      genre_id: genres.sample.id,
      user_id: users.sample.id
      )
  end
end

stories = Story.all

# create some comments
sample_stories = stories.sample(95)
for i in sample_stories
  3.times do
    i.comments.create(
      content: Faker::Lorem.sentence,
      story_id: sample_stories.sample.id,
      commentor_id: users.sample.id
      )
  end
end
