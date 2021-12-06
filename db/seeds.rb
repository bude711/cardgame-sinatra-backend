puts "Deleting old data..."
Player.destroy_all
Score.destroy_all

puts "🌱 Seeding players..."

# Seed your database here
p1 = Player.create(first_name:"Brandi", last_name: "Ude", age: 28 )

puts "🌱 Seeding scores..."

Score.create(player_id:p1.id, score: 5)
Score.create(player_id:p1.id, score: 7)
Score.create(player_id:p1.id, score: 3)

puts "✅ Done seeding!"
