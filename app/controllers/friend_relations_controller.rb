class FriendRelationsController < ApplicationController
  def create
    friend_relation = current_user.friend_relations.new friend_id: params[:friend_id]

    if friend_relation.save
      flash[:success] = "Added friend"
    else
      flash[:danger] = "Can't add friend"
    end

    redirect_to root_path
  end

  def destroy
    friend_relation = FriendRelation.find_by id: params[:id]

    if friend_relation.destroy
      flash[:success] = "Removed friend"
    else
      flash[:danger] = "Can't remove friend"
    end

    redirect_to root_path
  end
end
