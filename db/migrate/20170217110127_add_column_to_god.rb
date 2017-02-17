class AddColumnToGod < ActiveRecord::Migration
  def change
    add_column :gods, :total, :integer
  end
end
