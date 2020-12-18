# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Player.destroy_all
Player.reset_pk_sequence
Game.destroy_all
Game.reset_pk_sequence
Match.destroy_all
Match.reset_pk_sequence

tyler = Player.create({name: "Tyler", age: 36, motto: "yolo", favorite_game: "Hold'em", win_phrase: "IYAMA GULDEN GAWD!", lose_phrase: "Shucks"})

fei = Player.create({name: "Fei", age: 29, motto: "brows on fleek", favorite_game: "Azul", win_phrase: "Of course", lose_phrase: "fake news"})

marla = Player.create({name: "Marla", age: 5, motto: "stop and smell the roses", favorite_game: "ball", win_phrase: "Woof", lose_phrase: "growl"})

piper = Player.create({name: "Piper", age: 2, motto: "i demand cuddles", favorite_game: "tugz", win_phrase: "your soul is mine", lose_phrase: "no biggie"})



catan = Game.create({name: "Catan", description: "Risk meets Monopoly", category: "Board game"})

azul = Game.create({name: "Azul", description: "a unique game of tiles", category: "Tile game"})

poker = Game.create({name: "Poker", description: "The best card game", category: "Gambling card game"})





match1 = Match.create({game_id: 1, match_datetime: DateTime.new(2017, 07, 12, 19, 00, 0), score: 17, notes: "a decicive victory", winner: "Fei"})
match1.players = [tyler, fei, marla, piper]
match1.save

match2 = Match.create({game_id: 2, match_datetime: DateTime.new(2020, 04, 01, 15, 55, 0), score: 96, notes: "won by a nose", winner: "Marla"})
match2.players = [marla, piper]
match2.save

#match3 = Match.create({game_id: 3, match_datetime: DateTime.new(1984, 08, 19, 10, 47, 05), winner: "Tyler"})
#match3.players = [tyler, fei, piper]
#match3.winner = tyler
#match3.save
