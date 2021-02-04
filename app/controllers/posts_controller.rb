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
    @post = Post.create(title: params[:title], description: params[:description])
    redirect_to post_path(@post)
  end 

  private

  # def post_params
  #   byebug
  #   params.require(:post).permit(:title, :description)
  # end 


end
