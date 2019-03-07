require 'twilio-ruby'

class BookingsController < ApplicationController
  before_action :set_activity, except: :index
  before_action :set_booking, only: [ :destroy ]

  def create
    @booking = Booking.new(user_id: current_user.id, activity_id: @activity.id)
    @booking.save
    send_sms
    respond_to do |format|
      format.html { redirect_to activity_path(@activity) }
      format.js  # <-- will render `app/views/reviews/create.js.erb`
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_dashboard_path(current_user)
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end

  def send_sms
    if @activity.bookings.count >= @activity.min_limit && @activity.name == "White Water Rafting"
      account_sid = ENV["TWILIO_ACCOUNT_SID"]
      auth_token = ENV["TWILIO_AUTH_TOKEN"]
      @activity.users.uniq.each do |user|
        client = Twilio::REST::Client.new(account_sid, auth_token)
        client.api.account.messages.create(
          from: '+17753776160',
          to: user.phone,
          body: "#{@activity.name}: You are ready to tumble! Make sure to meet your group on #{@activity.start_date.strftime("%b %d %Y")} at #{@activity.start_date.strftime("%H:%M")}. Your meetup point is at #{@activity.location}."
        )
      end
    end
  end
end
