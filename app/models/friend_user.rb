class FriendUser < ApplicationRecord
  has_one :friends_address, dependent: :destroy
end
