class CreateArticles < ActiveRecord::Migration[5.0]
  def change
    create_table :articles do |t|
      t.string :title, null:false
      t.text :body, null:false
      t.integer :user_id, null:false
      t.integer :voteable_id, null:false
      t.string :voteable_type, null:false
      t.integer :category_id, null:false

      t.timestamps
    end
  end
end
