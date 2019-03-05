require "date"

class UsersController < ApplicationController
  before_action :set_user, only: [ :bookings_dashboard, :reviews_dashboard ]

  def bookings_dashboard
    @bookings = @user.bookings
    @reviews = @user.reviews
    time = Time.new(2020, 03, 20, 10, 15)
    @activities_been_to = current_user.activities.where("end_date < ?", time)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
