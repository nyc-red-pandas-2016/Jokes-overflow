class CreateComments < ActiveRecord::Migration[5.0]
  def change
    create_table :comments do |t|
      t.text :body, null:false
      t.integer :user_id, null:false
      t.integer :article_id, null:false
      t.integer :voteable_id
      t.string :voteable_type

      t.timestamps
    end
  end
end
