require 'faker'
Movie.destroy_all if Rails.env.development?

10.times do
Movie.create!(
  title: Faker::Movie.title,
  overview: Faker::Quote.famous_last_words,
  poster_url: Faker::LoremFlickr.image,
  rating: rand(0.0...10.0)
)
end
