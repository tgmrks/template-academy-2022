class DirectorsController < ApplicationController
  before_action :set_director, only: %i[ show edit update destroy ]
  # GET
  def index
    @directors = Director.all
  end
  # GET
  def show
  end
  # GET
  def new
    @director = Director.new
  end
  # GET
  def edit
  end
  # POST
  def create
    @director = Director.new(director_params)
    respond_to do |format|
      if @director.save
        format.html { redirect_to directors_url, notice: "Director was successfully created." }
        format.json { render :show, status: :created, location: @director }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
  end
  # PATCH/PUT
  def update
    respond_to do |format|
      if @director.update(director_params)
        format.html { redirect_to directors_url, notice: "Director was successfully updated." }
        format.json { render :show, status: :ok, location: @director }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @director.errors, status: :unprocessable_entity }
      end
    end
  end
  # DELETE
  def destroy
    @director.destroy
    respond_to do |format|
      format.html { redirect_to directors_url, notice: "was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
  # Use callbacks to share common setup or contrants between actions
  def set_director
    @director = Director.find(params[:id])
  end

  # Only allow a list of trusted parameters through
  def director_params
    params.require(:director).permit(:name)
  end
end
