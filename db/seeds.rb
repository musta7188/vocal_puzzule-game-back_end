# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


player1 = Player.create(name: "Mustafa")
player2 = Player.create(name: "Alex")


card1 = Card.create(image1: "https://images-na.ssl-images-amazon.com/images/I/812L5zyAmpL._AC_SX522_.jpg", image2: "https://media.tiffany.com/is/image/Tiffany/EcomItemL2/all-purpose-white-wine-glass-25486439_870853_ED_M.jpg?&op_usm=2.0,1.0,6.0&$cropN=0.1,0.1,0.8,0.8&defaultImage=NoImageAvailableInternal&", word: "Hourglass")
card2 = Card.create(image1: "https://www.fruitgravycompany.com/wp-content/uploads/2018/12/basket.jpg", image2:"https://www.teenmissions.org/wp-content/uploads/2016/05/1407858226.png", word: "Basketball")



