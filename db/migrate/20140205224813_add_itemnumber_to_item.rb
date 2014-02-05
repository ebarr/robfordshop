class AddItemnumberToItem < ActiveRecord::Migration
  def change
    add_column :items, :itemnumber, :string
  end
end
