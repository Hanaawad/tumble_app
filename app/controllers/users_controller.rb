class UsersController < ApplicationController
  before_action :set_user, only: [ :bookings_dashboard, :reviews_dashboard ]

  def bookings_dashboard
    @bookings = @user.bookings
  end

  def reviews_dashboard
    @activities_been_to = current_user.activities.where("end_date < ?", Time.now)
    @reviews = @user.reviews
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
