class CentresController < ApplicationController
  def index
    @centres = Centre.all
  end

  def show
    @centres = Centre.find(params[:id])
    @dog = Dog.find(params[:id])
    @users = User.all
  end
end
