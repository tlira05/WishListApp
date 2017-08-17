class PostsController < ApplicationController
	
  def index
    @new_post = Post.new
    @all_posts = Post.order(rank: :desc).all
  end
  
  def create
    @new_post = Post.new(post_params)
        	if @new_post.save
        redirect_to '/posts'
        else
        	render 'new'
      end
  end

  def update
    @post = Post.find(params[:id])
    @post.increment!(:rank)
  end
  
  def downgrade
    @post = Post.find(params[:id])
    @post.decrement!(:rank)
  end

  def destroy
    @post = Post.find(params[:id])
    @post.destroy
    redirect_to '/posts'
  end


  private
  def post_params
    params.require(:post).permit(:item)
  end

end
