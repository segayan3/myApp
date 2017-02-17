class AddOrderToGods < ActiveRecord::Migration
  def change
    add_column :gods, :sku, :string
  end
end
