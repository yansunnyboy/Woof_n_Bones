class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = Booking.joins(:dog).where(dog: { user_id: current_user.id })
    @centres = Centre.all
  end

  def show
    # @bookings = Booking.all
    # @centres = Centre.where(dog_id: {current_user.id)
    # @dogs = Dog.joins(:booking).where(booking: {})
  end

  def new
    @booking = Booking.new
    @centre = Centre.where(id: params[:centre_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.centre = Centre.find(params[:centre_id])
    if @booking.save
      # redirect_to root_path
      redirect_to bookings_path
    else
      puts "ERROR #{@booking.errors.full_messages}"
      render "centres/show"
    end
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking.id)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  def edit
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:dog_id, :centre_id, :booking_date)
  end
end
