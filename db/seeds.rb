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

tyler = Player.create({name: "Tyler", username: "SirCrowboticus", age: 36, motto: "yolo"})

fei = Player.create({name: "Fei", username: "TigerPrincess", age: 29, motto: "brows on fleek"})

marla = Player.create({name: "Marla", username: "DaBomb", age: 5,  motto: "stop and smell the roses"})

piper = Player.create({name: "Piper", username: "Becky", age: 2, motto: "i demand cuddles"})



catan = Game.create({name: "Catan", description: "Risk meets Monopoly", category: "Board game"})

azul = Game.create({name: "Azul", description: "a unique game of tiles", category: "Tile game"})

poker = Game.create({name: "Poker", description: "The best card game", category: "Gambling card game"})





match1 = Match.create({game_id: 1, player_id: 1, match_datetime: DateTime.new(2017, 07, 12, 19, 00, 0), score: 17, notes: "a decicive victory", winner: "Fei"})
match1.player_names = [tyler.name, fei.name, marla.name, piper.name]
match1.save

match2 = Match.create({game_id: 2, player_id: 1, match_datetime: DateTime.new(2020, 04, 01, 15, 55, 0), score: 96, notes: "won by a nose", winner: "Marla"})
match2.player_names = [tyler.name, fei.name]
match2.save

#match3 = Match.create({game_id: 3, match_datetime: DateTime.new(1984, 8, 19, 10, 47, 05), winner: "Tyler"})
#match3.player_names = [tyler, fei, piper]
#match3.winner = tyler
match3.save
