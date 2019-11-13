class CreateJerseyOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :jersey_orders do |t|
      t.integer :quantity
      t.decimal :unit_price
      t.references :jersey, null: false, foreign_key: true
      t.references :order, null: false, foreign_key: true

      t.timestamps
    end
  end
end
