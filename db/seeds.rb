# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.reset_pk_sequence
Player.destroy_all
Player.reset_pk_sequence
Game.destroy_all
Game.reset_pk_sequence
Match.destroy_all
Match.reset_pk_sequence

user1 = User.create({username: "Tyler", password: "123"})

user2 = User.create({username: "Fei", password: "123"})

user3 = User.create({username: "Marla", password: "123"})

user4 = User.create({username: "Piper", password: "123"})

user5 = User.create({username: "Mom", password: "123"})

user6 = User.create({username: "Dad", password: "123"})


tyler = Player.create({name: "Tyler", age: 36, motto: "yolo", favorite_game: "Hold'em", win_phrase: "IYAMA GULDEN GAWD!", lose_phrase: "Shucks", user_id: 1})

fei = Player.create({name: "Fei", age: 29, motto: "brows on fleek", favorite_game: "Azul", win_phrase: "Of course", lose_phrase: "fake news", user_id: 2})

marla = Player.create({name: "Marla", age: 5, motto: "stop and smell the roses", favorite_game: "ball", win_phrase: "Woof", lose_phrase: "growl", user_id: 3})

piper = Player.create({name: "Piper", age: 2, motto: "i demand cuddles", favorite_game: "tugz", win_phrase: "your soul is mine", lose_phrase: "no biggie", user_id: 4})

mom = Player.create({name: "Mom", age: 26, motto: "rOYAL!", favorite_game: "Cribbage", win_phrase: "I was losing the whole time!", lose_phrase: "next time", user_id: 5})

dad = Player.create({name: "Dad", age: 60, motto: "yeehaw", favorite_game: "Cod", win_phrase: "Say your prayers!", lose_phrase: "unbuluvuble", user_id: 4})


catan = Game.create({name: "Catan", description: "Risk meets Monopoly", category: "Board game"})

azul = Game.create({name: "Azul", description: "a unique game of tiles", category: "Tile game"})

poker = Game.create({name: "Poker", description: "The best card game", category: "Gambling card game"})

life = Game.create({name: "Life", description: "The game of Life", category: "Board"})



match1 = Match.create({game_id: 1, match_datetime: DateTime.new(2017, 07, 12, 19, 00, 0), score: 17, notes: "a decicive victory", winner: "Fei"})
match1.players = [tyler, fei, marla, piper]
match1.save

match2 = Match.create({game_id: 2, match_datetime: DateTime.new(2020, 04, 01, 15, 55, 0), score: 96, notes: "won by a nose", winner: "Marla"})
match2.players = [marla, piper]
match2.save

match3 = Match.create({game_id: 3, match_datetime: DateTime.new(1984, 8, 19, 10, 46, 55), score: 1000000, notes: "a royal win", winner: "Tyler"})
match3.players = [tyler, fei, piper]
match3.save
