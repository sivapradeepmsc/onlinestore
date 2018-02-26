class AddPriceToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :price, :string
  end
end
