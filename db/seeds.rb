puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."

10.times do
  Restaurant.create(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number_with_country_code,
    category: %w[chinese italian japanese french belgian].sample
  )
  puts "Create the #{Restaurant.name}"
end
puts "Finished!"
