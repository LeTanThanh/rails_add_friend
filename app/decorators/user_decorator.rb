class UserDecorator < ApplicationDecorator
  def friend_relation_with user
    FriendRelation.where(user_id: self.id, friend_id: user.id)
      .or(FriendRelation.where(user_id: user.id, friend_id: self.id)).first
  end
end
