class User < ApplicationRecord
  has_many :friend_relations, dependent: :destroy
  has_many :friends, through: :friend_relations
end
