class MovieGenresController < ApplicationController
  before_action :set_movie_genre, only: %i[ show edit update destroy ]
  # GET
  def index
    @movie_genres = MovieGenre.all
  end
  # GET
  def show
  end
  # GET
  def new
    @movie_genre = MovieGenre.new
  end
  # GET
  def edit
  end
  # POST
  def create
    @movie_genre = MovieGenre.new(movie_genre_params)
    respond_to do |format|
      if @movie_genre.save
        # format.html { redirect_to movie_genre_url(@movie_genre), notice: "Movi Genre was successfully created." }
        format.html { redirect_to movie_genres_url, notice: "Movi Genre was successfully created." }
        format.json { render :show, status: :created, location: @movie_genre }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @movie_genre.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT
  def update
    respond_to do |format|
      if @movie_genre.update(movie_genre_params)
        # format.html { redirect_to movie_genre_url(@movie_genre), notice: "Movie Genre was successfully updated." }
        format.html { redirect_to movie_genres_url, notice: "Movie Genre was successfully updated." }
        format.json { render :show, status: :ok, location: @movie_genre }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @movie_genre.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE
  def destroy
    @movie_genre.destroy
    respond_to do |format|
      format.html { redirect_to movie_genres_url, notice: "was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or contrants between actions
  def set_movie_genre
    @movie_genre = MovieGenre.find(params[:id])
  end

  # Only allow a list of trusted parameters through
  def movie_genre_params
    params.require(:movie_genre).permit(:name)
  end
end
