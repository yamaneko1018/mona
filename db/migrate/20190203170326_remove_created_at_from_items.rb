class RemoveCreatedAtFromItems < ActiveRecord::Migration[5.2]
  def change
    remove_column :items, :created_at, :datetime
  end
end
