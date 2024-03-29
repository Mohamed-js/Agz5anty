class CosmMedsController < ApplicationController
  before_action :set_cosm_med, only: %i[ show edit update destroy ]

  # GET /cosm_meds or /cosm_meds.json
  def index
    @cosm_meds = CosmMed.all
  end

  # GET /cosm_meds/1 or /cosm_meds/1.json
  def show
    @cart = Cart.new
    @medication = CosmMed.find(params[:id])
  end

  # GET /cosm_meds/new
  def new
    @cosm_med = CosmMed.new
  end

  # GET /cosm_meds/1/edit
  def edit
  end

  # POST /cosm_meds or /cosm_meds.json
  def create
    @cosm_med = CosmMed.new(cosm_med_params)

    respond_to do |format|
      if @cosm_med.save
        format.html { redirect_to @cosm_med, notice: "Cosm med was successfully created." }
        format.json { render :show, status: :created, location: @cosm_med }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cosm_med.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /cosm_meds/1 or /cosm_meds/1.json
  def update
    respond_to do |format|
      if @cosm_med.update(cosm_med_params)
        format.html { redirect_to @cosm_med, notice: "Cosm med was successfully updated." }
        format.json { render :show, status: :ok, location: @cosm_med }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cosm_med.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cosm_meds/1 or /cosm_meds/1.json
  def destroy
    @cosm_med.destroy
    respond_to do |format|
      format.html { redirect_to cosm_meds_url, notice: "Cosm med was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_cosm_med
      @cosm_med = CosmMed.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def cosm_med_params
      params.require(:cosm_med).permit(:name, :description, :cosm_cat_id, :image, :quantity, :price, :discount)
    end
end
