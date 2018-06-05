class LikesController < ApplicationController
 
  def create
    @is_user_liked = Like.where(user_id: like_params[:user_id]).count
    unless @is_user_liked
      redirect_to posts_url
    end
    
    @like = Like.new(like_params)
    if @like.save
      redirect_to url_for(:controller => :posts, :action => :show, :id => like_params[:post_id])
    else
      render :action => 'new'
    end
  end

  def destroy
    Like.find(params[:id]).destroy
    redirect_to posts_url
  end

  private

  def like_params
    params.require(:like).permit(:post_id, :user_id)
  end

end

