class DogsController < ApplicationController

  def index
    @dogs = Dog.all
  end

  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(dog_params)
    @dog.user_id = current_user.id
    if @dog.save
      redirect_to root_path, notice: 'Dog was successfully added.'
    else
      render :new
    end


  end

  private

  def dog_params
    params.require(:dog).permit(:name, :size, :vaccination_status, :user_id, :disexed, :breed, :diet)
  end
end


    # Only allow a list of trusted parameters through.
