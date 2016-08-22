class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.integer :voteable_id, null:false
      t.string :voteable_type, null:false
      t.integer :count, default: 0

      t.timestamps
    end
  end
end
