class FavoritesController < ApplicationController
  before_action :require_user_logged_in

  def create
    user = User.find(params[:favorite_id])
    current_user.like(micropost)
    flash[:success] = 'お気に入りに登録しました。'
    redirect_to user
  end

  def destroy
    user = User.find(params[:favorite_id])
    current_user.unlike(micropost)
    flash[:success] = 'お気に入りを解除しました。'
    redirect_to user
  end
end