class PagesController < ApplicationController
  def home
  end

  def index
    @user = User.where(id: current_user.id) if user_signed_in?
    @centres = Centre.all
  end
end
