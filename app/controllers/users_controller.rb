class UsersController < ApplicationController
    def index
    end

    def show
        @user = User.find(params[:id])
        @post = Post.find(params[:id])
        @todo = Todo.find(params[:id])
    end
    
end
