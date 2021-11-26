class CentresController < ApplicationController
  before_action :set_centre, only: %i[show edit update destroy bookings]

  def index
    @user = User.where(id: current_user.id) if user_signed_in?
    @centres = Centre.all
  end

  def show
    @centre = Centre.find(params[:id])
    @dog = Dog.find(params[:id])
    @users = User.all
    @booking = Booking.new
    url = centre_url(params[:id])
    url = "https://www.youtube.com/watch?v=iik25wqIuFo"
    url = "http://bit.do/woofnbone"
    qrcode = RQRCode::QRCode.new(url)
    @qr_svg = qrcode.as_svg(
      color: '212121',
      shape_rendering: 'crispEdges',
      module_size: 11,
      standalone: true,
      use_path: true,
      viewbox: '0 0 500 500'
    )
  end

  def new
    @centre = Centre.new
  end

  def create
    @centre = Centre.new(centre_params)
    @centre.save
    redirect_to user_centres_path(user_id: current_user.id)
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

  def bookings
    @bookings = @centre.bookings.joins(:dog).where(dog: { user_id: current_user.id })
    @user = User.find(params[id: current_user.id])
  end

  def centres
    @user = User.where(id: current_user.id) if user_signed_in?
    @centres = Centre.all
  end

  private

  def set_centre
    @centre = Centre.find(params[:id])
  end

  def centre_params
    params.require(:centre).permit(:name, :location, :phone_number, :capacity, :user_id)
  end
end
