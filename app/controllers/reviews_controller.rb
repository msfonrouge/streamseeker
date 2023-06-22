class ReviewsController < ApplicationController
  before_action :set_user, only: [:create]
  def create
    @movie = Movie.find(params[:movie_id])
    @review = Review.new(review_params)
    @review.movie = @movie
    @review.user = current_user
    #puts params[:review][:rate]
    #@review.rate = params[:review][:rate] if params[:review][:rate].present?
    if @review.save
      redirect_to movie_path(@movie)
    else
      render "movies/show", status: :unprocessable_entity
    end
  end

  private

  def review_params
    params.require(:review).permit(:content, :rate)
  end

  def set_user
    @user = current_user if current_user
  end
end
