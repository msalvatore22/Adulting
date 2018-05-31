class CommentsController < ApplicationController
  def index
    @comments = comment.all
    @user = User.find_by(params[:id])
  end

  def show
    @comment = comment.find(params[:id])
  end

  def new
    @comment = comment.new
    @user = User.find_by(params[:id])
  end

  def edit
    @comment = comment.find(params[:id])
  end

  def create
    @comment = comment.new(comment_params)
    @user = User.find_by(params[:id])

    if @comment.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end

  def update
    @comment = comment.find(params[:id])
	
    if @comment.update_attributes(comment_params)
       redirect_to :action => 'show', :id => @comment
    else
       render :action => 'edit'
    end
  end

  def destroy
    comment.find(params[:id]).destroy
    redirect_to :action => 'index'
  end
end
