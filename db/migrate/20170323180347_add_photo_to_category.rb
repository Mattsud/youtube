class AddPhotoToCategory < ActiveRecord::Migration[5.0]
  def change
    add_column :categories, :photo, :string
  end
end
