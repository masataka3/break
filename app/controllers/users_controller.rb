class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
    @post_comment = PostComment.new
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
  end
end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user), notice: 'ユーザー情報を更新しました。'
    else
      render :edit
    end
  end

  def create
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to user_path(current_user)
  end
end

  private

  def user_params
    params.require(:user).permit(:name, :profile, :image, :postcode, :prefecture_name, :address_city, :address_street, :address_building)
  end
end
