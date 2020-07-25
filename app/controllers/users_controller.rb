class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = User.find(prams[:id])
    if @user != current_user
      redirect_to usr_path(current_user), alert: '不正なアクセス'
    end
  end

  def edit
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to user_path(current_user), notice: "ユーザー情報を更新しました"
  end
end

  def update
  end

  def create
    @user = User.find(params[:id])
    if @user != current_user
      redirect_to user_path(current_user)
  end
end

  def user_params
    params.require(:user).permit(:name, :profile, :image)
  end
end
