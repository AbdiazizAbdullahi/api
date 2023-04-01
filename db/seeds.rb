require 'faker'

puts "Seeding..."

# Seed data for users table
10.times do
    User.create(
      username: Faker::Internet.username,
      email: Faker::Internet.email,
      year_born: Faker::Number.between(from: 1950, to: 2005),
      password_digest: Faker::Internet.password
    )
  end

# Generate fake movie data
10.times do
  movie = Movie.create(
    image: Faker::LoremFlickr.image(size: "300x300", search_terms: ['movie']),
    title: Faker::Movie.title,
    year: Faker::Number.between(from: 2022, to: 2023),
    director: Faker::Name.name,
    category: Faker::Book.genre
  )
end

# Generate fake review data
10.times do
  Review.create( 
    rating: Faker::Number.between(from: 1, to: 5),
    comment: Faker::Lorem.sentence(word_count: 10),
    user_id: Faker::Number.unique.between(from: 1, to: 10),
    movie_id: Faker::Number.between(from: 1, to: 10)
  )
end

# Seed data for user_movies table
5.times do
    UserMovie.create(
        genre: Faker::Book.genre,
        user_id: Faker::Number.between(from: 1, to: 10),
        movie_id: Faker::Number.between(from: 1, to: 10)
    )
end


puts "Done seeding"
