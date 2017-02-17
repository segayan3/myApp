class CreateGods < ActiveRecord::Migration
  def change
    create_table :gods do |t|

      t.timestamps null: false
    end
  end
end
