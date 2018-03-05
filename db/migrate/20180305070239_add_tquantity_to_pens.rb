class AddTquantityToPens < ActiveRecord::Migration[5.1]
  def change
    add_column :pens, :tquantity, :decimal
  end
end
