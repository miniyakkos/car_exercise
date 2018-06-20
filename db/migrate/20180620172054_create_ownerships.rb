class CreateOwnerships < ActiveRecord::Migration[5.2]
  def change
    create_table :ownerships do |t|
      t.references :person
      t.references :car
      t.date :sale_date
      t.decimal :sale_price, precision: 10, scale: 2
      t.decimal :mileage, precision: 10, scale: 2
      t.timestamps
    end

    add_foreign_key(
      :ownerships,
      :people,
      column: :person_id
    )

    add_foreign_key(:ownerships, :cars)
  end
end
