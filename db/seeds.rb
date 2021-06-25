
User.destroy_all
Flatsharing.destroy_all
Expense.destroy_all
Calendar.destroy_all

#Create user and one flat 
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



#create calendar
Calendar.create!(
    title: "Soiree GOT",
    description: "Regarder le nouvel episode de Game of throooone aiiiight ! #winter is comming les bro",
    timedate: "Sat Jun 26 2021 00:00:00 GMT+0200 (heure d’été d’Europe centrale)",
    dashboard: "1",
    by: "1"
)

Calendar.create!(
    title: "Soiree Pyjamas",
    description: "Sortez les potins",
    timedate: "Sat Jun 26 2021 00:00:00 GMT+0200 (heure d’été d’Europe centrale)",
    dashboard: "1",
    by: "1"
)

Calendar.create!(
    title: "Soiree Tizzz",
    description: "Beer pong; beer jumping, strip beer",
    timedate: "Sat Jun 24 2021 00:00:00 GMT+0200 (heure d’été d’Europe centrale)",
    dashboard: "1",
    by: "1"
)

Calendar.create!(
    title: "Plombier",
    description: "Reparer robiner a 14h",
    timedate: "Sat Jun 23 2021 00:00:00 GMT+0200 (heure d’été d’Europe centrale)",
    dashboard: "1",
    by: "1"
)


