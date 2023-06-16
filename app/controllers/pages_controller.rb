class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: %i[home index]

  def home
    @user = current_user
    @movies = Movie.order("RANDOM()").limit(10)
    @genres = Movie.distinct.pluck(:genre)

    if params[:query]
      # @movie_search = Movie.where("ILIKE" params[:query])
      # encontrar con metodo de pgsearch para que iguale params.
      # aca tengo que en vez Movie.where definir que metodo de pg.search
    else
      @movie_search = Movie.all
    end
    respond_to do |format|
      format.html
      # format.json { render json: { movies_search: @movies_search } }
      # no quiero el JSON
      format.text { render partial: "shared/list", locals: { movie_search: @movie_search }, formats: :html }

    end
  end
end
