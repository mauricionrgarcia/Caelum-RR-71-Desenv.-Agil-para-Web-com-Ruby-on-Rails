class CreateRestaurants < ActiveRecord::Migration[5.0]
  def change
    create_table :restaurants do |t|
      t.string :name, limit: 80
      t.string :address
      t.timestamps
    end
  end
end
