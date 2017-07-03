class CreatePhrases < ActiveRecord::Migration[5.1]
  def change
    create_table :phrases do |t|
      t.integer :user_id
      t.string :hash_token

      t.timestamps
    end
  end
end
