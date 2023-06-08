puts "🌱 Seeding users..."
20.times do 
    User.create(
        name: Faker::User.name,
        email: Faker::Internet.email,
        password: <PASSWORD>,
        age: rand(18..90),
        location: Faker::


    )

# Seed your database here


puts "✅ Done seeding!"
