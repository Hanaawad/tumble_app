require "date"

class UsersController < ApplicationController
  before_action :set_user, only: [ :bookings_dashboard, :reviews_dashboard ]

  def bookings_dashboard
    now = Time.now
    @bookings = @user.bookings
    @pending = []
    @user.bookings.each do |booking|
      @pending << booking if booking.activity.min_limit > booking.activity.users.count
    end
    @ready = []
    @user.bookings.each do |booking|
      @ready << booking if booking.activity.min_limit <= booking.activity.users.count
    end
    @done = []
    @user.bookings.each do |booking|
      @done << booking
    end
    @reviews = @user.reviews
    time = Time.new(2020, 03, 20, 10, 15)
    @activities_been_to = current_user.activities.where("end_date < ?", time)
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
