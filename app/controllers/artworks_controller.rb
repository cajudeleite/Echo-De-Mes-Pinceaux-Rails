include ActionView::Helpers::TextHelper
class ArtworksController < ApplicationController
  before_action :set_artwork, only: %i[ show edit update destroy ]
  skip_before_action :authenticate_user!, :only => [:index, :show, :filter]

  # GET /artworks or /artworks.json
  def index
    @artworks = Artwork.order(created_at: :desc).paginate(page: params[:page], :per_page => 10)
    @techniques = Technique.all
    @collections = Collection.all
    @statuses = Status.all
    @years = Year.all
  end

  # GET /artworks/filter or /artworks/filter.json
  def filter
    @artworks = Artwork.where(filter_params).order(created_at: :desc).paginate(page: params[:page], :per_page => 10)
    render :index
  end

  # GET /artworks/1 or /artworks/1.json
  def show
  end

  # GET /artworks/new
  def new
    @artwork = Artwork.new
  end

  # GET /artworks/1/edit
  def edit
  end

  # POST /artworks or /artworks.json
  def create
    @artwork = Artwork.new(artwork_params)
    @artwork.user_id = current_user.id
    respond_to do |format|
      if @artwork.save
        format.html { redirect_to artwork_url(@artwork), notice: "Réalisation artistique publiée avec succès" }
        format.json { render :show, status: :created, location: @artwork }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /artworks/1 or /artworks/1.json
  def update
    respond_to do |format|
      if @artwork.update(artwork_params)
        format.html { redirect_to artwork_url(@artwork), notice: "Réalisation artistique mise à jour avec succès" }
        format.json { render :show, status: :ok, location: @artwork }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @artwork.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /artworks/1 or /artworks/1.json
  def destroy
    @artwork.destroy

    respond_to do |format|
      format.html { redirect_to artworks_url, notice: "Réalisation artistique supprimée avec succès" }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_artwork
      @artwork = Artwork.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def artwork_params
      params.require(:artwork).permit(:title, :year_id, :technique_id, :collection_id, :status_id, :description, photos: [])
    end

    def filter_params
      params.permit(:technique_id, :collection_id, :year_id, :status_id)
    end
end
