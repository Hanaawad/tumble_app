class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @most_recent_activity = Activity.order("activation_date").first
    @activities = Activity.all
  end

  def search
  end
end
