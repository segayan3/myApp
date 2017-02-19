class AddOrderDateToGod < ActiveRecord::Migration
  def change
    add_column :gods, :order_date, :date
  end
end
