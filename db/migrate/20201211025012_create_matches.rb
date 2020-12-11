class CreateMatches < ActiveRecord::Migration[6.0]
  def change
    create_table :matches do |t|

      t.timestamps
    end
  end
end
