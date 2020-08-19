require 'faker'
Restaurant.delete_all

5.times do
  Restaurant.create(name: Faker::Restaurant.name,
                    address: Faker::Address.street_address,
                    phone_number: Faker::PhoneNumber.cell_phone_in_e164,
                    category: %w[chinese italian japanese french belgian].sample
                    )
end
