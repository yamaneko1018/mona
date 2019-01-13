class AddUsersIdToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :users_id, :integer
  end
end
