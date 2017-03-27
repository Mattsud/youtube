class AddPhotoToPlateform < ActiveRecord::Migration[5.0]
  def change
    add_column :plateforms, :photo, :string
  end
end
