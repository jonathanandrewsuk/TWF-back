class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :phrase_id
      t.string :text
      t.string :gif_id
      t.string :text_theme
      t.string :gif_theme
      t.timestamps
    end
  end
end
