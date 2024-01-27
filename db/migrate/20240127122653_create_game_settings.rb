class CreateGameSettings < ActiveRecord::Migration[7.1]
  def change
    create_table :game_settings do |t|
      t.references :game, null: false, foreign_key: true
      t.integer :werewolf_count, null: false, default: 0
      t.integer :citizen_count, null: false, default: 0

      t.timestamps
    end
  end
end
