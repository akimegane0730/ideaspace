class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.references  :user, null:false
      t.text        :content, null:false
      t.integer     :place_id, null:false
      t.integer     :player_id
      t.integer     :opponent_id, null:false
      t.timestamps
    end
  end
end
