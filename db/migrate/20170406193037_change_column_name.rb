class ChangeColumnName < ActiveRecord::Migration[5.0]
  def change
    rename_column :videos, :category_title, :category
  end
end
