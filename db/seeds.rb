# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Expense.destroy_all
User.destroy_all
Flatsharing.destroy_all

title = ["Courses bouffes monoprix", "Facture internet", "Croquettes pour le chat" ]

3.times do |e|
  Expense.create!(
  id_expense: (e + 1),
  title: (title[e]),
  date_of_expense: ("2021/06/17"),
  total_amount: (rand(50..90)),
  concerned_colocs: ("Melflix, FredFlex, TéFLix"),
  pending_payment: true,  
  paid_expense: false )
end

email = ["me@me.fr", "te@te.fr", "fred@fred.fr"]
3.times do |u|
  User.create!(
    email: (email[u]),
    password: 'Hellolateamrails'
  )
end

1.times do 
  Flatsharing.create(
    title: "Le Perchoir",
    description: "Une colloc de Dingue",
    admin_id: "u51",
    pending_invitation: []
  )
end