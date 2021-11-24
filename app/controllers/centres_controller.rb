class CentresController < ApplicationController
  def index
    @centres = Centre.all
  end

  def show
    @centres = Centre.find(params[:id])
  end
end
