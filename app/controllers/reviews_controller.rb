class ReviewsController < ApplicationController
  before_action :set_activity

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.user = current_user
    @review.activity = @activity
    if @review.save
      redirect_to bookings_dashboard_path(current_user)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:description, :rating, :photo)
  end

  def set_activity
    @activity = Activity.find(params[:activity_id])
  end
end
