class CreateDishes < ActiveRecord::Migration
  def change
    create_table :dishes do |t|
      t.string :img_url
      t.string :name
      t.text :desc
      t.text :ingredients
      t.integer :calories
      t.integer :protein
      t.integer :sodium
      t.integer :carbs
      t.decimal :price, precision: 8, scale: 2
      t.datetime :delivery_date
      t.datetime :order_date

      t.timestamps
    end
  end
end
