class UsersController < ApplicationController
  before_action :set_user, only: [ :dashboard ]

  def dashboard
    @bookings = @user.bookings
  end

  private

  def set_user
    @user = User.find(params[:id])
  end
end
