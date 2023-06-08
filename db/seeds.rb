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
supply_received=["Received", "Not received"]
account_status=["Balance", "No Balance"]
20 times.do
        water_supply.create(
                name: Faker::User.name,
                location: Faker::Address.city,
                supply_received: supply_received.sample,
                account_status: account_status.sample,

)

end


puts "Seeding water_complaints..."
10 times.do
        water_complaints.create(
            name: Faker::User.name,
            location: Faker::Address.city,
            account_status:"No Balance",
            description:"We have not received the weekly supply of water and are therefore kindly requesting for guidance on how to proceed"
        )
end


puts "Seeding electricity_complaints..."
10 times.do
    electricity_complaints.create(
        name: Faker::User.name,
        location: Faker::Address.city,
        account_status:"No Balance",
        description:"Currently experiencing a power outage which has not resolved for the past 5 hours 
                    and are therefore kindly requesting for assistance"
    )
end
# Seed your database here


puts "✅ Done seeding!"
