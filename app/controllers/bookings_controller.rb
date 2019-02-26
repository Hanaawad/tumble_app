class BookingsController < ApplicationController
  before_action :set_activity, except: :index
  before_action :set_booking, only: [ :edit, :update, :destroy ]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.activity = @activity
    @booking.user = current_user
    @booking.save
    redirect_to activities_path
  end

  def destroy
    @booking.destroy
    redirect_to activities_path
  end

  private

  def booking_params
    params.require(:booking).permit()
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end
end
