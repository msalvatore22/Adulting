class CommentsController < ApplicationController
  def index
    @comments = Comment.all
    @user = current_user
    @post = Post.find(params[:id])
  end

  def show
    @comment = Comment.find(params[:id])
  end

  def new
    @comment = Comment.new
    @post = Post.find(params[:id])
    @user = current_user
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def create
    @post = Post.find_by(params[:id])
    @comment = Comment.new(comment_params)
    @user = User.find_by(params[:id])

    if @comment.save
      redirect_to url_for(:controller => :posts, :action => :show, :id => @post.id)
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
    post_id = Comment.find(params[:id]).post_id
    Comment.find(params[:id]).destroy
    redirect_to url_for(:controller => :posts, :action => :show, :id => post_id)
  end

  private

  def comment_params
    params.require(:comment).permit(:content, :user_id, :post_id)
  end
end
