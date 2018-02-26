class CreatePens < ActiveRecord::Migration[5.1]
  def change
    create_table :pens do |t|
      t.text :phone
      t.string :mtype
      t.decimal :price
      t.text :description
      t.decimal :quantity
      t.decimal :total
      t.references :pice, foreign_key: true

      t.timestamps
    end
  end
end
