class PostsController < ApplicationController

def index
  @posts = Post.all
end

def new
  @post = Post.new
end

def create
  post = Post.create(post_params)
  redirect_to root_path, notice: "今日も頑張ろう！！"
end

def show
  @post = Post.find(params[:id])

end

private
def post_params
  params.require(:post).permit(:text,:Feedback,:business,:tomorrow)
end

end
