class CreateRelationships < ActiveRecord::Migration[6.1]
  def change
    create_table :relationships do |t|

      # フォローするユーザーid
      t.integer :follower_id
      # フォローされるユーザーid
      t.integer :followed_id
      t.timestamps
    end
  end
end
