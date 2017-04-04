class AddSlugToVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :slug, :string
    add_index :videos, :slug
  end
end
