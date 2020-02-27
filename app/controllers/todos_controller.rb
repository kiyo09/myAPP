class TodosController < ApplicationController

  def index
    @todos = Todo.all
  end
  
  def new
    @todo = Todo.new
  end
  
  def create
    todo = Todo.create(todo_params)
    redirect_to posts_path, notice: "今日も頑張ろう！！"
  end
  
  def show
    @todo = Todo.find(params[:id])
  
  end
  
  private
  def todo_params
  params.require(:todo).permit(:todo1,:todo3,:todo5).merge(user_id: current_user.id)
  end

end
