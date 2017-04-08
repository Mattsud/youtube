class UsersController < ApplicationController

  def show
    @user = User.friendly.find(params[:id])
    @favorite_videos = @user.find_voted_items.sort_by{|e| -e[:cached_votes_up]}
  end
end
