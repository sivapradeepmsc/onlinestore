class AddTpriceToPens < ActiveRecord::Migration[5.1]
  def change
    add_column :pens, :tprice, :decimal
  end
end
