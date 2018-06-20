class CreateCars < ActiveRecord::Migration[5.2]
  def change
    create_table :cars do |t|
      t.string :model, limit: 50, null: false
      t.string :make, limit: 50, null: false
      t.string :color, limit: 50, null: false
      t.decimal :mileage, precision: 10, scale: 2
      t.string :owner, limit: 50
      t.boolean :is_for_sale
      t.timestamps
    end
  end
end
