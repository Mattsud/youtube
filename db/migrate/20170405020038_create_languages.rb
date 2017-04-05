class CreateLanguages < ActiveRecord::Migration[5.0]
  def change
    create_table :languages do |t|
      t.string :title
      t.string :photo

      t.timestamps
    end
  end
end
