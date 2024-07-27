class CreateFriendAddresses < ActiveRecord::Migration[6.1]
  def change
    create_table :friend_addresses do |t|

      t.string        :neighborhood
      t.string        :street
      t.string        :number
      t.string        :city
      t.string        :state
      t.string        :zip
      t.float         :latitude
      t.float         :longitude
      t.references    :friend_user, index: true, foreign_key: true

      t.timestamps
    end
  end
end
