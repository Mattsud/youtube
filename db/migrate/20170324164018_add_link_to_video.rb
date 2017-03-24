class AddLinkToVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :link, :string
  end
end
