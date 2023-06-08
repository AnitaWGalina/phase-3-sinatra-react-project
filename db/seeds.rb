puts "🌱 Seeding users..."
20.times do 
    users.create(
        name: Faker::User.name,
        email: Faker::Internet.email,
        password: <PASSWORD>,
        age: rand(18..90),
        location: Faker::Address.city,
        country: Faker::Address.country,


    )
end


puts "Seeding water_supply..."

20 times.do
       water_supply.create(
                name: Faker::User.name,
                location: Faker::Address.city,
                supplyreceived:"Not received",
                account_status:"No Balance"

)

end


puts "Seeding water_complaints..."
10 times.do
        water_complaints.create(
            name: Faker::User.name,
            location: Faker::Address.city,
            account_status:"No Balance"
            description:"We have not received the weekly supply of water and are therefore kindly requesting for guidance on how to proceed"
        )
end


puts "Seeding electricity_complaints..."
10 times.do
    electricity_complaints.create(
        name: Faker::User.name,
        location: Faker::Address.city,
        account_status:"No Balance"
        description:""
    )
end
# Seed your database here


puts "✅ Done seeding!"
