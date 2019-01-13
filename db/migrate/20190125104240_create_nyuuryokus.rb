class CreateNyuuryokus < ActiveRecord::Migration[5.2]
  def change
    create_table :nyuuryokus do |t|

      t.timestamps
    end
  end
end
