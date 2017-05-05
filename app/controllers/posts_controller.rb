class PostsController < ApplicationController
  def new
  	@post = Post.new 
  end

  def index
    #flash[:notice] = "Your comment was received."
  end

  def show
  	@post = Post.find(params[:id])
  end
  def create
  	@post = current_user.posts.create!(permit_post)
  	if @post.save
<<<<<<< HEAD
  		flash[:success] = "Yay! Your post has been created."
=======
  		flash[:success]= "Yay! Your post has been created. Check your profile!"
>>>>>>> 2ad9edf595685a30232b19475928fa6949998070
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
