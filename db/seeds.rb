20.times do |count|
  puts "Creating fake retaurant #{count + 1} of 10..."

  name = Faker::Restaurant.name
  address = "#{Faker::Address.city}, #{Faker::Address.street_address}"
  category = ['chinese', 'italian', 'japanese', 'french', 'belgian'].sample
  phone_number = Faker::PhoneNumber.cell_phone_with_country_code

  Restaurant.create(name: name, address: address, category: category, phone_number: phone_number)
end
