class PostsController < ApplicationController

def index
  @posts = Post.includes(:user).order("created_at DESC")
  @todo = Todo.includes(:user).order("created_at DESC")
end

def new
  

end

def create
  post = Post.create(post_params)
  redirect_to todos_path, notice: "今日も頑張ろう！！"
end

def show
  @post = Post.find(params[:id])
  @todo = Todo.find(params[:id])
  @user = current_user
  
end

private
def post_params
  params.require(:post).permit(:text,:Feedback,:business,:tomorrow,:week).merge(user_id: current_user.id, todo_id: params[:todo_id])
end

end
