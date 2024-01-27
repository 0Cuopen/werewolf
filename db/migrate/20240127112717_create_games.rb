class CreateGames < ActiveRecord::Migration[7.1]
  def change
    create_table :games do |t|
      t.references :room, null: false, foreign_key: true
      t.string :status, null: false

      t.timestamps
    end
  end
end
