class CreatePrints < ActiveRecord::Migration[6.1]
  def change
    create_table :prints do |t|
      t.references :user, null: false, foreign_key: true
      t.text :settings
      t.string :file
      t.boolean :success

      t.timestamps
    end
  end
end
