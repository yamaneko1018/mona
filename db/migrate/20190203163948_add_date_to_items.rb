class AddDateToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :date, :datetime
  end
end
