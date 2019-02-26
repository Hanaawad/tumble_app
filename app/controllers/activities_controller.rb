class ActivitiesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  before_action :set_activity, only: [ :show, :edit, :update, :destroy ]

  def index
    @activities = Activity.all
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
    redirect_to dashboard_path(current_user)
  end

  private

  def set_activity
    @activity = Activity.find(params[:id])
  end

  def activity_params
    params.require(:activity).permit(:name, :description, :location, :price, :address, :start_date, :end_date, :activation_date, :min_limit, :max_limit, :photo)
  end
end








