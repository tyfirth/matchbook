# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# matchbook



  I want this application to be fun and easy to use. This application will keep track of matches of games between players, like a record book for family game nights.

  I want a user to be able to create a players, games, and matches.

  A player has many matches, and has many games through matches.
  A game has many matches, and has many players through matches.

  A match belongs to a game.
  A match has and belongs to many players.

  Sample commands/methods

  'game.matches' returns all the matches of a game. Ex. 'Catan.matches' returns an array of all catan matches in reverse chronological order, most recent first

  'player.matches' retuns all the matches a player played in reverse chronological order, most recent first

Questions

- Match show page objects of users being puts

-Players array in match

-How to handle the winner

-What's best to use, datetime or strftime
-can you format datetime?
