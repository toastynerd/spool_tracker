class CreateSpools < ActiveRecord::Migration[6.1]
  def change
    create_table :spools do |t|
      t.references :user, null: false, foreign_key: true
      t.string :rfid
      t.string :material
      t.string :manufacturer
      t.date :purchased

      t.timestamps
    end
  end
end
