puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
categories = ["chinese", "italian", "japanese", "french", "belgian"]

15.times do
  Restaurant.create!(
    name: Faker::Restaurant.name,
    address: Faker::Address.full_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: categories[rand(0..4)]
  )
end

puts 'Finished!'