class CreateFriendUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :friend_users do |t|
      t.string :first_name
      t.string :full_name

      t.timestamps
    end
  end
end
