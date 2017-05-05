class PostsController < ApplicationController
  def new
  	@post = Post.new 
  end

  def index
  end

  def show
  	@post = Post.find(params[:id])
  end
  def create
  	@post = current_user.posts.create!(permit_post)
  	if @post.save
  		flash[:success]= "Yay! Your post has been created. Check your profile!"
  		redirect_to post_path(@post)
  	else
  		flash[:error] = @post.error.full_messages
  		redirect_to new_post_path
  	end
  end
  private 
  	def permit_post
  		params.require(:post).permit(:user_id,:image, :description)
  	end
end
