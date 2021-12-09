puts "Deleting old data..."
Player.destroy_all
Score.destroy_all

puts "🌱 Seeding players..."

# Seed your database here
p1 = Player.create(name:"Brandi", age: 28 )

puts "🌱 Seeding scores..."

Score.create(player_id:p1.id, score: 5)
Score.create(player_id:p1.id, score: 7)
Score.create(player_id:p1.id, score: 11)
Score.create(player_id:p1.id, score: 15)
Score.create(player_id:p1.id, score: 21)

puts "✅ Done seeding!"
