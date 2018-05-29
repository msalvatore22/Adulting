class LikesController < ApplicationController
  def index
    @likes = like.all
  end

  def show
    @like = Like.find(params[:id])
  end

  def new
    @like = Like.new
  end

  def edit
    @like = Like.find(params[:id])
  end

  def create
    @like = Like.new(like_params)

    if @like.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end

  def update
    @like = Like.find(params[:id])
	
    if @like.update_attributes(like_params)
       redirect_to :action => 'show', :id => @like
    else
       render :action => 'edit'
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
