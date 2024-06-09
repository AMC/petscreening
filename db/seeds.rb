# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Clear existing data
Pet.destroy_all

# Create pets
Pet.create!(
  [
    { name: 'Buddy', kind: 'Dog', breed: 'Golden Retriever', weight: 60 },
    { name: 'Whiskers', kind: 'Cat', breed: 'Siamese', weight: 8.5 },
    { name: 'Tweety', kind: 'Bird', breed: 'Canary', weight: 1 },
    { name: 'Nemo', kind: 'Fish', breed: 'Clownfish', weight: 0.25 }
  ]
)

puts "Created #{Pet.count} pets"
