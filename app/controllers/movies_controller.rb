class MoviesController < ApplicationController
  before_action :set_movie, only: %i[ show edit update destroy ]
  # GET
  def index
    @movies = Movie.all
  end
  # GET
  def show
  end
  # GET
  def new
    @movie = Movie.new
    @director_options = Director.all
    @artist_options = Artist.all
    @category_options = MovieGenre.all
  end
  # GET
  def edit
    @director_options = Director.all
    @artist_options = Artist.all
    @category_options = MovieGenre.all
  end
  # POST
  def create
    @movie = Movie.new(movie_params)
    respond_to do |format|
      if @movie.save
        format.html { redirect_to movies_url, notice: "Movie was successfully created." }
        format.json { render :show, status: :created, location: @movie }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT
  def update
    respond_to do |format|
      if @movie.update(movie_params)
        format.html { redirect_to movies_url, notice: "Movie was successfully updated." }
        format.json { render :show, status: :ok, location: @movie }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE
  def destroy
    @movie.destroy
    respond_to do |format|
      format.html { redirect_to movies_url, notice: "was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or contrants between actions
  def set_movie
    @movie = Movie.find(params[:id])
  end

  # Only allow a list of trusted parameters through
  def movie_params
    params.require(:movie).permit(:title, :sinopse, :cover_url, :published_at, :director_id, :artist_ids, :category_ids)
  end
end
