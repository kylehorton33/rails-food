class CreateIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :ingredients do |t|
      t.string :name, null: false, unique: true, limit: 40
      t.decimal :quantity, null: false, precision: 2, scale: 1
      t.string :unit
      t.date :expires_on, null: false
      t.string :location

      t.timestamps
    end
  end
end
