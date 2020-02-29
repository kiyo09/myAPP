class TodosController < ApplicationController

  def index
    @todos = current_user.todos.order("created_at DESC")
  end
  
  def new
    @todo = Todo.new
    @user = current_user
  end
  
  def create
    todo = Todo.create(todo_params)
    redirect_to todos_path, notice: "今日も頑張ろう！！"
  end
  
  def show
    @todo = Todo.find(params[:id])
    @posts = Post.where(" id = ? ", "#{@todo.id}").order("created_at DESC")
    if @posts.present?
      @post = Post.find(params[:id])
    else
      @post = Post.new
    end
  end

  def edit
    @todo = Todo.find(params[:id])
  end

  def update
    todo = Todo.find(params[:id])
    todo.update(todo_params)
    # redirect_to todo_posts_path(todo), notice: "今週も頑張ろう！！"
    redirect_to todos_path, notice: "今日も頑張ろう！！"
  end

  
  private
  def todo_params
  params.require(:todo).permit(:todo1, :todo3, :todo5, :checkbox1, :checkbox3, :checkbox5).merge(user_id: current_user.id)
  end

end
