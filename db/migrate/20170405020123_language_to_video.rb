class LanguageToVideo < ActiveRecord::Migration[5.0]
  def change
    add_column :videos, :language, :string
  end
end
