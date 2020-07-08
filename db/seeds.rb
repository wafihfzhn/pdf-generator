# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

20.times do
  ServicePayment.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    company: Faker::Company.name,
    amount: Faker::Number.number(digits: 3),
    invoice_number: Faker::Invoice.creditor_reference,
    invoice_date: Faker::Date.between(from: 30.days.ago, to: Date.today)
  )
end
