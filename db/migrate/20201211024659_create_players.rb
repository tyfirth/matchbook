class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :age
      t.string :motto
      t.string :favorite_game
      t.string :win_phrase
      t.string :lose_phrase
      t.string :password_digest

      t.timestamps
    end
  end
end
