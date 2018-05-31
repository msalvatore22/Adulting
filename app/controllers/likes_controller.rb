class LikesController < ApplicationController
 
  def create
    @like = Like.new(like_params)

    if @like.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end


  def destroy
    Like.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private

  def like_params
    params.require(:like).permit(:post_id, :user_id)
  end
end
