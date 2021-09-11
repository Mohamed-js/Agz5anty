class Api::V1::CosmeticsController < Api::V1::VersionOneController
    before_action :set_cosmetic, only: %i[ show ]

    # GET cosmetics/1
    def show
        render json: @cosmetic
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_cosmetic
        @cosmetic = CosmMed.find(params[:id])
    end
end