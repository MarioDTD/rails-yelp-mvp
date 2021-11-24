
puts 'Destroying'

Restaurant.destroy_all

puts 'Creating restaurants'

5.times do
  category_array = ["chinese", "italian", "japanese", "french", "belgian"]
  new_restaurant = Restaurant.new(
    name: Faker::Restaurant.name,
    address: Faker::Address.street_address,
    phone_number: Faker::PhoneNumber.phone_number,
    category: category_array.sample
  )
  new_restaurant.save!
end

puts 'Restaurants created'
