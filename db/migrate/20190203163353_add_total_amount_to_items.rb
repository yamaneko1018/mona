class AddTotalAmountToItems < ActiveRecord::Migration[5.2]
  def change
    add_column :items, :total_amount, :integer
  end
end
