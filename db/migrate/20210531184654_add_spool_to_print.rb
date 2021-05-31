class AddSpoolToPrint < ActiveRecord::Migration[6.1]
  def change
    change_table :prints do |t|
      t.references :spool, foreign_key: true
    end
  end
end
