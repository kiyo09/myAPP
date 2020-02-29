class MonthsController < ApplicationController
  def index
    @months = Month.includes(:user).order("created_at DESC")
  end
  
  def new
    @month = Month.new
  end
  
  def create
    month = Month.create(month_params)
    redirect_to months_path, notice: "今週も頑張ろう！！"
  end
  
  def show
    @month = Month.find(params[:id])
    @weeks = Week.where("month = ? ", "#{@month.month}").order("created_at DESC")
    # if @weeks.ids.present?
    # @week = Week.find(params[:id])
    # end
  end

  def edit
    @month = Month.find(params[:id])
  end

  def update
    month = Month.find(params[:id])
    month.update(month_params)
    redirect_to month_path(month), notice: "今週も頑張ろう！！"
  end
  
  private
  def month_params
    params.require(:month).permit(:text, :Feedback, :month, :target, :goal, :checkbox, :year).merge(user_id: current_user.id)
  end

end

