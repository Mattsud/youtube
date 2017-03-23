class AddPhotoToVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :photo, :string
  end
end
