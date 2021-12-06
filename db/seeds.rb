puts "Deleting old data..."
Player.destroy_all
Score.destroy_all

puts "🌱 Seeding players..."

# Seed your database here
p1 = Player.create(first_name:"Brandi", last_name: "Ude", age: 28 )

puts "🌱 Seeding scores..."

Score.create(player_id:pa1.id, score: )

puts "✅ Done seeding!"
