class CreateVideoCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :video_categories do |t|
      t.references :video, foreign_key: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
