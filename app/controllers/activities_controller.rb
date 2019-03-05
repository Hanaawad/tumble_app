class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show, :filter_by_category, :filter_by_dropdown ]
  before_action :set_activity, only: [ :show, :edit, :update, :destroy ]

  def index

    if params[:location].present? && params[:start_date].present? && params[:end_date].present?
      sql_query = "start_date BETWEEN :start AND :end"
      @activities = Activity.all.near(params[:location], 100).where(sql_query, start: "#{params[:start_date]}", end: "#{params[:end_date]}")
      @markers = @activities.map do |activity|
        {
          lng: activity.longitude,
          lat: activity.latitude
        }
      end
    elsif params[:location].present?
      sql_query = "location ILIKE :location"
      @activities = Activity.all.near(params[:location], 100)
      @markers = @activities.map do |activity|
        {
          lng: activity.longitude,
          lat: activity.latitude
        }
      end
    elsif params[:start_date].present? && params[:end_date].present?
      @activities = Activity.all.where(start_date: (params[:start_date]..params[:end_date]))
      @markers = @activities.map do |activity|
        {
          lng: activity.longitude,
          lat: activity.latitude
        }
      end
    else
      @activities = Activity.where.not(latitude: nil, longitude: nil)
      @markers = @activities.map do |activity|
        {
          lng: activity.longitude,
          lat: activity.latitude
        }
      end
    end
  end

  def filter_by_dropdown
    @category = Category.find(params[:id])
    @activities = @category.activities
  end

  def filter_by_category
    @category = Category.find(params[:id])
    @activities = @category.activities
    respond_to do |format|
      format.html { redirect_to activities_path }
      format.js
    end
  end

  def show
  end

  def new
    @activity = Activity.new
  end

  def create
    @activity = Activity.new(activity_params)
    @activity.user = current_user
    if @activity.save
      redirect_to activities_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @activity.update(activity_params)
    if @activity.save
      redirect_to activity_path
    else
      render :edit
    end
  end

  def destroy
    @activity.destroy
    redirect_to bookings_dashboard_path(current_user)
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, :location, :price, :address, :start_date, :end_date, :activation_date, :min_limit, :max_limit, :photo)
  end
end








