class User < ApplicationRecord
  has_many :friend_relations, dependent: :destroy
  has_many :friends, through: :friend_relations

  has_many :reverse_friend_relations, dependent: :destroy,
    class_name: FriendRelation.name, foreign_key: :friend_id
  has_many :reverse_friends, through: :reverse_friend_relations,
    source: :user
end
