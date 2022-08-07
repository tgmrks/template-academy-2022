class ArtistsController < ApplicationController
  before_action :set_artist, only: %i[ show edit update destroy ]
  # GET
  def index
    @artists = Artist.all
  end
  # GET
  def show
  end
  # GET
  def new
    @artist = Artist.new
  end
  # GET
  def edit
  end
  # POST
  def create
    @artist = Artist.new(artist_params)
    respond_to do |format|
      if @artist.save
        format.html { redirect_to artists_url, notice: "Artist was successfully created." }
        format.json { render :show, status: :created, location: @artist }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT
  def update
    respond_to do |format|
      if @artist.update(artist_params)
        format.html { redirect_to artists_url, notice: "Artist was successfully updated." }
        format.json { render :show, status: :ok, location: @artist }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artist.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE
  def destroy
    @artist.destroy
    respond_to do |format|
      format.html { redirect_to artists_url, notice: "was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or contrants between actions
  def set_artist
    @artist = Artist.find(params[:id])
  end

  # Only allow a list of trusted parameters through
  def artist_params
    params.require(:artist).permit(:name)
  end
end
