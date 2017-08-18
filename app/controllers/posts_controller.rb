class PostsController < ApplicationController

  def index
    # @new_post = Post.new
    # @all_posts = Post.order(rank: :desc).all
    @posts = Post.order(rank: :desc).all
  end

  def new
    @post = Post.new
  end

  def create
    # @new_post = Post.new(post_params)
    #     	if @new_post.save
    #     redirect_to '/posts'
    #     else
    #     	render 'new'
    #   end
    @post = Post.new(post_params)
    @post.rank = 1
    if @post.save
      redirect_to posts_url
    else
      flash[:errors] = @post.errors.full_messages
      render :new
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    # @post.increment!(:rank)
    if @post.update_attributes(post_params)
      redirect_to posts_url
    else
      flash[:errors] = @post.errors.full_messages
      render :edit
    end
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
    redirect_to posts_url
  end

  private

  def post_params
    params.require(:post).permit(:item, :rank)
  end

end
