class AddPlateformIdToVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :plateform_id, :integer
    add_index  :videos, :plateform_id
  end
end
