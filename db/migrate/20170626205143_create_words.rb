class CreateWords < ActiveRecord::Migration[5.1]
  def change
    create_table :words do |t|
      t.string :string
      t.string :gif_id

      t.timestamps
    end
  end
end
