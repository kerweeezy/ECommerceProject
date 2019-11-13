class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.decimal :subtotal
      t.decimal :total
      t.references :jersey, null: false, foreign_key: true

      t.timestamps
    end
  end
end
