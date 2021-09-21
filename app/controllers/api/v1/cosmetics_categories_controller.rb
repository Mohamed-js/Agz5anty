class Api::V1::CosmeticsCategoriesController < Api::V1::VersionOneController
  before_action :set_cosmetic, only: %i[show]

  # GET cosmetics_categories?id=skin   => the id here for the category's parent "string"
  def index
    render json: CosmCat.where(parent: params[:id])
  end

  # GET cosmetics_categories/2   => the id here for the category
  def show
    render json: @cosmetic.cosm_meds.order('name ASC').offset(params[:offset]).limit(12)
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cosmetic
    @cosmetic = CosmCat.find(params[:id])
  end
end
