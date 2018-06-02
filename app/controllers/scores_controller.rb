class ScoresController < ApplicationController
  def index
    @scores = Score.all
  end

  def show
    @score =  Score.find_by(params[:id])
    @user = User.find_by(params[:id])
    @user_score = @user.score
  end

  def new
    @score =  Score.new
    @user = User.find_by(params[:id])
  end

  def edit
    @user = User.find_by(params[:id])
    @score =  Score.find_by(params[:id])
  end

  def create
    @score = Score.new(score_params)

    @user = current_user


    if @score.save
      redirect_to :action => 'show', :id => @score
    else
      render :action => 'new'
    end

  end

  def update
    @score = Score.find(params[:id])
	
    if @score.update_attributes(score_params)
       redirect_to :action => 'show', :id => @score
    else
       render :action => 'edit'
    end
  end

  def destroy
    Score.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  private

  def score_params
    params.require(:score).permit(:finance, :housing, :cars, :travel, :technology, :lifestyle, :user_id)
  end
end
