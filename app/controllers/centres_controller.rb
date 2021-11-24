class CentresController < ApplicationController
  before_action :set_centre, only: %i[show edit update destroy]

  def index
    @centres = Centre.all
  end

  def show
    @dog = Dog.find(params[:id])
    @users = User.all
  end

  def new
    @centre = Centre.new
  end

  def create
    @centre = Centre.new(centre_params)
    @centre.save
    redirect_to centre_path(@centre.id)
  end

  def update
    @centre.update(centre_params)
    redirect_to centre_path(@centre.id)
  end

  def destroy
    @centre.destroy
    redirect_to centres_path
  end

  def edit
  end

  private

  def set_centre
    @centre = Centre.find(params[:id])
  end

  def centre_params
    params.require(:centre).permit(:name, :location, :phone_number, :capacity, :user_id)
  end
end
