class PostsController < ApplicationController
  def index
    # @posts = Post.all
    
    # @post = Post.find_by(params[:id])
    # @user = current_user

    # @comments = Comment.all
    # @comment = Comment.new

    if params[:search]
      @posts = Post.where('topic LIKE ?', "%#{params[:search]}%")
    else
      @posts = Post.all
    end
  end
    
  def show
    @user = current_user
    @comment = Comment.new
    @post = Post.find(params[:id])
    @like_count = Like.where(post_id: params[:id]).count
    @is_user_liked = Like.where(user_id: @user.id, post_id: params[:id]).count != 0
    @like = Like.new()
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

    @user = current_user


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
    @posts = Post.where(topic: 'Cars').all

  end

  def finance_posts
    @posts = Post.where(topic: 'Finance').all
  end

  def housing_posts
    @posts = Post.where(topic: 'Housing').all
  end

  def lifestyle_posts
    @posts = Post.where(topic: 'Lifestyle').all
  end

  def technology_posts
    @posts = Post.where(topic: 'Technology').all
  end

  def travel_posts
    @posts = Post.where(topic: 'Travel').all
  end

  private

  def post_params
    params.require(:post).permit(:search, :title, :topic, :content, :user_id)
  end

end
