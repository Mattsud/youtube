class UsersController < ApplicationController

  def show
    @user = User.friendly.find(params[:id])
    @favorite_videos = @user.find_voted_items.order(:cached_votes_up => :desc)

  end
end
