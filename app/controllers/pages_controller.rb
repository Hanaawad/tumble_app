class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home, :scrapebook ]

  def home
    @most_recent_activity = Activity.order("activation_date").first
    @top_three_activity = Activity.all.sample(3)
    @eight_good_reviews = []
    Review.all.each do |review|
      @eight_good_reviews << review if review.description.length > 45
    end
  end

  def scrapebook
    @reviews = Review.all.order(:created_at)
  end
end
