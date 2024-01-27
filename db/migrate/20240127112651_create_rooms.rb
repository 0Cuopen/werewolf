class CreateRooms < ActiveRecord::Migration[7.1]
  def change
    create_table :rooms do |t|
      t.string :unique_code, null: false

      t.timestamps
    end
  end
end
