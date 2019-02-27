class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @most_recent_activity = Activity.order("activation_date").first
    @top_three_activity = Activity.all.sample(3)
  end

  def search
  end
end
