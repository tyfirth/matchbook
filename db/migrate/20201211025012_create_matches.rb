class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|

      t.integer :game_id
      t.string :players

      t.datetime :match_datetime
      t.string :winner
      t.integer :score
      t.string :notes

      t.timestamps
    end
  end
end

#Questions
# How can I make object attributes?
  # winner is a Player object
  # players is an array of player objects
