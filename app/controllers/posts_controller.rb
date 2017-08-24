class PostsController < ApplicationController
	
  before_action :require_user, only: [:index]

  def index
    @new_post = Post.new
    @all_posts = Post.order(rank: :desc).all
  end
  
  def new
    @new_post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def create
    @new_post = Post.new(post_params)
      if @new_post.save        
        redirect_to '/posts'
      else
        render 'new'
      end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.update_attributes(post_params)    
        redirect_to '/posts'
      else
        render 'edit'
      end
  end

  def delete
    @post = Post.find(params[:id])
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    flash[:action] = "Your gift was Deleted."
    redirect_to '/posts'
  end

private 
  def post_params
    params.require(:post).permit(:item, :description, :link, :rank)
  end


end
