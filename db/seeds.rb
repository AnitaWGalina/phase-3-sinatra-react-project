puts "🌱 Seeding users..."
20.times do 
    User.create(
        name: Faker::Name.name,
        email: Faker::Internet.email,
        password: '12345',
        age: rand(18..90),
        location: Faker::Address.city,
        country: Faker::Address.country,
        account_status: NIL
    )
end


puts "Seeding WaterSupply..."

supply_received = ["Received", "Not received"]
account_status = ["Balance", "No Balance"]

20.times do
        WaterSupply.create(
                name: Faker::Name.name,
                location: Faker::Address.city,
                supply_received: supply_received.sample,
                account_status: account_status.sample)
end


puts "Seeding WaterComplaint..."
10.times do
     WaterComplaint.create(
            name: Faker::Name.name,
            location: Faker::Address.city,
            account_status:"No Balance",
            description:"We have not received the weekly supply of water and are therefore kindly requesting for guidance on how to proceed"
        )
end


puts "Seeding ElectrictyComplaint..."
10.times do
    ElectricityComplaint.create(
        name: Faker::Name.name,
        location: Faker::Address.city,
        account_status:"No Balance",
        description:"Currently experiencing a power outage which has not resolved for the past 5 hours 
                    and are therefore kindly requesting for assistance"
    )
end
# Seed your database here


puts "✅ Done seeding!"
