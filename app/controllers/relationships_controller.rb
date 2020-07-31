class RelationshipsController < ApplicationController
  def create
    @user = User.find(params[:user_id])
    current_user.follow(@user.id)
  end

  def destroy
    @user = User.find(params[:user_id])
    current_user.unfollow(@user.id)
  end

  def follower
    @user = User.find(params[:user_id])
    @users = @user.following_user
  end

  def followed
    @user = User.find(params[:user_id])
    @users = @user.follower_user
  end
end
