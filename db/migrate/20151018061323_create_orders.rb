class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :dish, index: true
      t.integer :quantity
      t.string :first
      t.string :last
      t.string :email
      t.string :phone
      t.string :deliver_to

      t.timestamps
    end
  end
end
