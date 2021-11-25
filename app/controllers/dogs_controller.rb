class DogsController < ApplicationController
  before_action :set_dog, only: %i[show edit update destroy]

  def index
    @dogs = Dog.where(user_id: current_user.id)
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user_id = current_user.id
    if @dog.save
      redirect_to dogs_path, notice: 'Dog was successfully added.'
    else
      render :new
    end
  end

  def update
    @dog.update(dog_params)
    redirect_to dogs_path
  end

  def destroy
    @dog.destroy
    redirect_to dogs_path
  end

  def edit
  end

  def show
    @dog = Dog.find(params[:id])
  end

  private

  def set_dog
    @dog = Dog.find(params[:id])
  end

  def dog_params
    params.require(:dog).permit(:name, :size, :vaccination_status, :user_id, :disexed, :breed, :diet)
  end
end
