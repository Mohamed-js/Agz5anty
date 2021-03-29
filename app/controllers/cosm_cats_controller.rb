class CosmCatsController < ApplicationController
  before_action :set_cosm_cat, only: %i[ edit update destroy ]

  # GET /cosm_cats or /cosm_cats.json
  def index
    @cosm_cats = CosmCat.all
  end

  # GET /cosm_cats/1 or /cosm_cats/1.json
  def show
    @cosm_cat = CosmCat.find(params[:id])
    @cosm_meds = @cosm_cat.cosm_meds
  end

  def cats
    @cosm_cat = CosmCat.where(parent: params[:name])
  end

  # GET /cosm_cats/new
  def new
    @cosm_cat = CosmCat.new
  end

  # GET /cosm_cats/1/edit
  def edit
  end

  # POST /cosm_cats or /cosm_cats.json
  def create
    @cosm_cat = CosmCat.new(cosm_cat_params)

    respond_to do |format|
      if @cosm_cat.save
        format.html { redirect_to @cosm_cat, notice: "Cosm cat was successfully created." }
        format.json { render :show, status: :created, location: @cosm_cat }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cosm_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cosm_cats/1 or /cosm_cats/1.json
  def update
    respond_to do |format|
      if @cosm_cat.update(cosm_cat_params)
        format.html { redirect_to @cosm_cat, notice: "Cosm cat was successfully updated." }
        format.json { render :show, status: :ok, location: @cosm_cat }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cosm_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cosm_cats/1 or /cosm_cats/1.json
  def destroy
    @cosm_cat.destroy
    respond_to do |format|
      format.html { redirect_to cosm_cats_url, notice: "Cosm cat was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cosm_cat
      @cosm_cat = CosmCat.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cosm_cat_params
      params.require(:cosm_cat).permit(:name, :img)
    end
end
