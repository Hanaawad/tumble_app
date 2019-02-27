class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :scrapebook ]

  def home
    @most_recent_activity = Activity.order("activation_date").first
    @top_three_activity = Activity.all.sample(3)
  end

  def scrapebook
    @reviews = Review.all.order(:created_at)
  end
end
