class AddDescriptionAndNotesToPrints < ActiveRecord::Migration[6.1]
  def change
    change_table :prints do |t|
      t.string :print_name
      t.text :description
      t.text :notes
    end
  end
end
