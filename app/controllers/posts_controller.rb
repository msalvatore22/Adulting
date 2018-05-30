class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
    @user = User.find_by(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def create
    @post = Post.new(post_params)
    @user = User.find_by(params[:id])

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

  def car_posts
    @post = Post.new
    @user = User.find_by(params[:id])

    @post = Post.new(post_params)
    @user = User.find_by(params[:id])

    if @post.save
      redirect_to :action => 'index'
    else
      render :action => 'new'
    end

  end

  def finance_posts

  end

  def housing_posts

  end

  def lifestyle_posts

  end

  def technology_posts

  end

  def travel_posts

  end

  private

  def post_params
    params.require(:post).permit(:title, :topic, :content, :user_id)
  end
end
