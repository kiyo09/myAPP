class MemosController < ApplicationController

  def index
    @memos = Memo.includes(:user)
  end
  
  def new
    @memo = Memo.new
  end
  
  def create
    memo = Memo.create(memo_params)
    redirect_to memos_path, notice: "今日も頑張ろう！！"
  end
  
  def show
    @memo = Memo.find(params[:id])
  end
  
  private
  def memo_params
    params.require(:memo).permit(:text,:title).merge(user_id: current_user.id)
  end

end
