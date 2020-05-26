class PostsController < ApplicationController
    include PostsHelper
    
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
        @post.title = params[:post][:title]
        @post.body = params[:body]
        @post.save

        redirect_to post_path(@post)
    end

    def update
        @post = Post.find(params[:id])
        @post.update(post_params)

        flash.notice = "Post '#{@post.title}' updated!"
        redirect_to post_path(@post)
    end

    def edit
        @post = Post.find(params[:id])
    end

end
