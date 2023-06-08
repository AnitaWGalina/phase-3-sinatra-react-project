puts "🌱 Seeding users..."
20.times do 
    User.create(
        name: Faker::User.name,
        email: Faker::Internet.email,
        password: <PASSWORD>,
        age: rand(18..90),
        location: Faker::Address.city,
        country: Faker::Address.country,


    )
end


puts "Seeding watersupply..."

20 times.do
       watersupply.create(
                name: Faker::User.name,
                location: Faker::Address.city,
                supplyreceived:
                account_status:

)

end


puts "waterComplaints..."
10 times.do
        waterComplaints.create(
            name: Faker::User.name,
            location: Faker::Address.city,
            account_status:
            description:
        )
end


puts "electricitycomplaints..."
10 times.do
    electricityComplaints.create(
        name: Faker::User.name,
        location: Faker::Address.city,
        account_status:
        description:
    )

# Seed your database here


puts "✅ Done seeding!"
