class CommentsController < ApplicationController
  def create
  end

  def destroy
    PostComment.find_by(id: params[:id], user_id: params[:user_id]).destroy
    redirect_to user_path(params[:user_id])
  end
end
