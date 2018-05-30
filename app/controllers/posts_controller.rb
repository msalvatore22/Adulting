class PostsController < ApplicationController
  def index
    @posts = Post.all
    @user = User.find_by(params[:id])
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
    @posts = Post.all

  end

  def finance_posts
    @posts = Post.all
  end

  def housing_posts
    @posts = Post.all
  end

  def lifestyle_posts
    @posts = Post.all
  end

  def technology_posts
    @posts = Post.all
  end

  def travel_posts
    @posts = Post.all
  end

  private

  def post_params
    params.require(:post).permit(:title, :topic, :content, :user_id)
  end
end
