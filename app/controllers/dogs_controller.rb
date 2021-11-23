class DogsController < ApplicationController
  def new
    @dog = Dog.new
  end

  def create
    @dog = Dog.new(params[:id])
    @dog.save
  end
end
