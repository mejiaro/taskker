user = User.create!(
  first_name: Faker::Name.first_name,
  last_name: Faker::Name.last_name,
  email: Faker::Internet.safe_email,
  password: 'password',
  password_confirmation: 'password'
)

list = List.create!(name: Faker::TvShows::MichaelScott.quote)

10.times do 
  list.tasks.create!(
    creator: user,
    name: Faker::TvShows::MichaelScott.quote,
    completed_at: Faker::Boolean.boolean(true_ratio: 0.2) ? Time.current : nil
    )
end