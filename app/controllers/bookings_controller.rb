require 'twilio-ruby'

class BookingsController < ApplicationController
  before_action :set_activity, except: :index
  before_action :set_booking, only: [ :destroy ]

  def create
    @booking = Booking.new(user_id: current_user.id, activity_id: @activity.id)
    @booking.save
    redirect_to bookings_dashboard_path(current_user)
    send_sms
  end

  def destroy
    @booking.destroy
    redirect_to bookings_dashboard_path(current_user)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end

  private

  def send_sms
    if @activity.bookings.count >= @activity.min_limit
      # raise
      account_sid = ENV["TWILIO_ACCOUNT_SID"]
      auth_token = ENV["TWILIO_AUTH_TOKEN"]
      @activity.users.each do |user|
        client = Twilio::REST::Client.new(account_sid, auth_token)
        client.api.account.messages.create(
          from: '+13238252984',
          to: user.phone,
          body: "#{@activity.name}: You are ready to tumble! Make sure to meet your group
            on the #{@activity.start_date} at #{@activity.location}"
        )
      end
    end
  end
end

      # account_sid = ENV["TWILIO_ACCOUNT_SID"]
      # auth_token = ENV["TWILIO_AUTH_TOKEN"]
      # client = Twilio::REST::Client.new(account_sid, auth_token)

      #   client.api.account.messages.create(
      #     from: '+14058352931',
      #     to: '+4523451026',
      #     body: "monkey: You are ready to tumble! Make sure to meet your group on the bla at blu"
      #   )
