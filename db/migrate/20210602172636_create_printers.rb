class CreatePrinters < ActiveRecord::Migration[6.1]
  def change
    create_table :printers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name
      t.string :manufacturer
      t.string :model
      t.text :modifications
      t.text :notes

      t.timestamps
    end
  end
end
