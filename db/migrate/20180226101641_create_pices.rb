class CreatePices < ActiveRecord::Migration[5.1]
  def change
    create_table :pices do |t|
      t.text :phone
      t.string :mtype
      t.decimal :price
      t.text :description

      t.timestamps
    end
  end
end
