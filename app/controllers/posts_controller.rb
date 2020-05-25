class PostsController < ApplicationController
    def index
        @posts = Post.all
    end
    
    def show
        @post = Post.find(params[:id])
    end

    def new
        @post = Post.new
    end

    def create
        @post = Post.new
        @post.title = params[:title]
        @post.content = params[:content]
        @post.save

        redirect_to post_path(@post)
    end



end
