class AddPublishedToVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :is_published, :boolean, default: false
  end
end
