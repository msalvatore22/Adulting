class PostsController < ApplicationController
  def indexshow
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)

    if @post.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end
  end

  def update
    @post = Post.find(params[:id])
	
    if @post.update_attributes(post_params)
       redirect_to :action => 'show', :id => @post
    else
       render :action => 'edit'
    end
  end

  def destroy
    Post.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private

  def post_params
    params.require(:post).permit(:title, :topic, :content, :user_id)
  end
end
