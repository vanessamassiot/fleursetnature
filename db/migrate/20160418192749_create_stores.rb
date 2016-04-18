class CreateStores < ActiveRecord::Migration
  def change
    create_table :stores do |t|
      t.string :name
      t.integer :stars
      t.string :address
      t.string :zipcode
      t.string :city
      t.string :phone_number
      t.string :email

      t.timestamps null: false
    end
  end
end
