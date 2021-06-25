
User.destroy_all
Flatsharing.destroy_all


fred = User.create!(
    email:"fred@yopmail.com",
    password: "coucou",
    nickname: "Fred",
    color:"#10c4c7",
)
fred.avatar.attach(io:File.open(Rails.root.join('app/asset/images/avatar_1.jpg')),
filename:'avatar_1.jpg')
fred.flat_picture.attach(io:File.open(Rails.root.join('app/asset/images/flat.jpeg')),
filename:'flat.jpeg')


Flatsharing.create!(
    title: "le Gang des coucous",
    description: "Sans alcool la fête est plus folle",
    admin_id: "1",
    pending_invitation:["melvin@yopmail.com","boris@yopmail.com","theo@yopmail.com"],
)

melvin = User.create!(
    email:"melvin@yopmail.com",
    password: "coucou",
    nickname: "Melvin",
      color:"#73dc95",
)
melvin.avatar.attach(io:File.open(Rails.root.join('app/asset/images/avatar.jpg')),
filename:'avatar.jpg')
melvin.flat_picture.attach(io:File.open(Rails.root.join('app/asset/images/flat_1.jpeg')),
filename:'flat_1.jpeg')

boris = User.create!(
    email:"boris@yopmail.com",
    password: "coucou",
    nickname: "Boris",
      color:"#f6e766",
)
boris.avatar.attach(io:File.open(Rails.root.join('app/asset/images/avatar_3.jpg')),
filename:'avatar_3.jpg')
boris.flat_picture.attach(io:File.open(Rails.root.join('app/asset/images/flat_2.jpeg')),
filename:'flat_2.jpeg')

theo = User.create!(
    email:"theo@yopmail.com",
    password: "coucou",
    nickname: "Théo",
      color:"#d95f67",
)
theo.avatar.attach(io:File.open(Rails.root.join('app/asset/images/avatar_2.jpg')),
filename:'avatar_2.jpg')
theo.flat_picture.attach(io:File.open(Rails.root.join('app/asset/images/flat_3.jpeg')),
filename:'flat_3.jpeg')




