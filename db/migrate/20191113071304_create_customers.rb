class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :postalcode
      t.string :address
      t.string :password
      t.references :province, null: false, foreign_key: true

      t.timestamps
    end
  end
end
