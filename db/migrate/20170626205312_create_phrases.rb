class CreatePhrases < ActiveRecord::Migration[5.1]
  def change
    create_table :phrases do |t|
      t.integer :user_id
      t.text    :words, array:true, default: []
      t.text :hash_token

      t.timestamps
    end
  end
end
