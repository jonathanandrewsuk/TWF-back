class CreatePhrases < ActiveRecord::Migration[5.1]
  def change
    create_table :phrases do |t|
      t.integer :user_id
      t.string    :gif_1
      t.string    :term_1
      t.string    :gif_2
      t.string    :term_2
      t.string    :gif_3
      t.string    :term_3
      t.string :hash_token

      t.timestamps
    end
  end
end
