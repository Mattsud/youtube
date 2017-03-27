class AddCategoryIdToVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :category_id, :integer
    add_index  :videos, :category_id
  end
end
