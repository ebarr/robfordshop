class AddOrderNumberToItem < ActiveRecord::Migration
  def change
    add_column :items, :order_id, :integer
    change_column :items, :price, :integer
  end
end
