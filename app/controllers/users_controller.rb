class UsersController < ApplicationController
  def show
  	#@current_profile = PersonalInfo.all.where('user_id' => current_user).first
  	#@current_profile_id = @current_profile.id
  	@user = User.find(params[:id])
  	@posts = Post.where("user_id = ?", User.find(params[:id]).id)
  	@newPost = Post.new

  end
end
