class YearsController < ApplicationController
  def index
    @years = Year.includes(:user).order("created_at DESC")
  end
  
  def new
    @year = Year.new
  end
  
  def create
    year = Year.create(year_params)
    redirect_to years_path, notice: "今日も頑張ろう！！"
  end
  
  def show
    @year = Year.find(params[:id])
    @months = Month.where("year = ? ", "#{@year.year}").order("created_at DESC")
    # if @months.ids.present?
    # @month = Month.find(id:params[:id])
    # end
  end

  def edit
    @year = Year.find(params[:id])
  end

  def update
    year = Year.find(params[:id])
    year.update(year_params)
    redirect_to year_path(year), notice: "今週も頑張ろう！！"
  end
  
  
  private
  def year_params
    params.require(:year).permit(:year,:title,:kgi,:kpi,:kdi).merge(user_id: current_user.id)
  end
end
