class CreateQuotes < ActiveRecord::Migration
  def change
    create_table :quotes do |t|
      t.string :text, null: false
      t.references :movie, null: false

      t.timestamps(null: false)
    end
  end
end
