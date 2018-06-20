class CreatePeople < ActiveRecord::Migration[5.2]
  def change
    create_table :people do |t|
      t.string :name, null: false
      t.string :email, limit: 50
      t.string :phone, limit: 20
      t.timestamps
    end
  end
end
