class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  def index
    @bookings = Booking.all
  end

  def show
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.save
    redirect_to booking_path(@booking.id)
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
