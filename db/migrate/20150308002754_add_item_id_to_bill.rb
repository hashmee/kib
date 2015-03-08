class AddItemIdToBill < ActiveRecord::Migration
  def change
    add_column :bills, :item_id, :integer
  end
end
