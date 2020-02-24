class YearsController < ApplicationController
  def index
    @years = Year.all
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
    params.require(:year).permit(:year,:title,:kgi,:kpi,:kdi)
  end
end