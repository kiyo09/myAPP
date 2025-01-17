class WeeksController < ApplicationController
  def index
    @weeks = current_user.weeks.order("created_at DESC")
  end
  
  def new
    @week = Week.new
  end
  
  def create
    week = Week.create(week_params)
    redirect_to weeks_path, notice: "今週も頑張ろう！！"
  end
  
  def show
    @week = Week.find(params[:id])
    @posts = Post.where(" week = ? ", "#{@week.week}").order("created_at DESC")
    # if @posts.ids.present?
    # @post = Post.find(params[:id])
    # end
  end

  def edit
    @week = Week.find(params[:id])
  end

  def update
    @week = Week.find(params[:id])
    @week.update(week_params)
    redirect_to week_path(@week), notice: "今週も頑張ろう！！"
  end
  
  private
  def week_params
    params.require(:week).permit(:text,:Feedback,:week,:checkbox,:month).merge(user_id: current_user.id)
  end
end
