class AddParametersToVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :category_title, :string
    add_column :videos, :channel_title, :string
    add_column :videos, :channel_subscribers, :integer
    add_column :videos, :description, :text
    add_column :videos, :view_count, :integer
    add_column :videos, :length, :string
    add_column :videos, :embed_code, :string
  end
end
