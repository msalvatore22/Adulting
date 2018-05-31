class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    @user = User.find_by(params[:id])
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
    @user = User.find_by(params[:id])
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def create
    @comment = Comment.new(comment_params)
    @user = User.find_by(params[:id])

    if @comment.save
      redirect_to posts_url
    else
      render :action => 'new'
    end
  end

  def update
    @comment = Comment.find(params[:id])
	
    if @comment.update_attributes(comment_params)
       redirect_to :action => 'show', :id => @comment
    else
       render :action => 'edit'
    end
  end

  def destroy
    Comment.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end
end
