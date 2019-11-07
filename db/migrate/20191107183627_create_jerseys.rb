class CreateJerseys < ActiveRecord::Migration[6.0]
  def change
    create_table :jerseys do |t|
      t.string :fullName
      t.string :description
      t.decimal :price
      t.string :image
      t.references :team, null: false, foreign_key: true

      t.timestamps
    end
  end
end
