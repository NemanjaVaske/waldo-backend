# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
firstImage = Image.create(name: "easy", url: "easy.jpg");

firstImage.characters.create(name: 'waldo', x_pos: 856, y_pos: 439)
firstImage.characters.create(name: 'wenda', x_pos: 491, y_pos: 252)
firstImage.characters.create(name: 'wizard', x_pos: 70, y_pos: 455)
firstImage.characters.create(name: 'odlaw', x_pos: 318, y_pos: 389)

secondImage = Image.create(name: "easy", url: "easy.jpg");
secondImage
secondImage.characters.create(name: 'waldo', x_pos: 406, y_pos: 376)
secondImage.characters.create(name: 'wenda', x_pos: 295, y_pos: 319)
secondImage.characters.create(name: 'wizard', x_pos: 781, y_pos: 349)
secondImage.characters.create(name: 'odlaw', x_pos: 71, y_pos: 415)