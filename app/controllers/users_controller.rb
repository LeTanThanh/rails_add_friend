class UsersController < ApplicationController
  def index
    @users = User.all.where.not(id: current_user.id)
  end

  def show
    @friends = current_user.friends
    @reverse_friends = current_user.reverse_friends
  end
end
