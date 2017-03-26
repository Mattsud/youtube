class AddChannelToVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :channel, :string
  end
end
