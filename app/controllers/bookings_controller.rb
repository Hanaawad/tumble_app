class BookingsController < ApplicationController
  before_action :set_activity, except: :index
  before_action :set_booking, only: [ :destroy ]

  def create
    @booking = Booking.new(user_id: current_user.id, activity_id: @activity.id)
    @booking.save
    redirect_to dashboard_path(current_user)
  end

  def destroy
    @booking.destroy
    redirect_to dashboard_path(current_user)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end
end
