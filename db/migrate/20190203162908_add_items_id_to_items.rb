class AddItemsIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :items_id, :integer
  end
end
