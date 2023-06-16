class ReviewsController < ApplicationController

  def create
    @movie = Movie.find(params[:movie_id])
    @review = Review.new(review_params)
    @review.movie = @movie
    @review.user = current_user
    @review.rate = params[:review][:rate].size - 1 if params[:review][:rate].present?
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
end
