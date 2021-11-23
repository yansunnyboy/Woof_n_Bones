class CentresController < ApplicationController

  def index
  end

  def new
    @centre = Centre.new
  end

  def create
    @centre = Centre.new(params[:id])
    @centre.save
  end
end
