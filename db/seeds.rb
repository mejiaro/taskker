list = List.create!(name: Faker::TvShows::MichaelScott.quote)

10.times do 
  list.tasks.create!(
    name: Faker::TvShows::MichaelScott.quote,
    completed_at: Faker::Boolean.boolean(true_ratio: 0.2) ? Time.current : nil
    )
end