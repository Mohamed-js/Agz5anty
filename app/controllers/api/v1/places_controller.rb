class Api::V1::PlacesController < Api::V1::VersionOneController
    # All governments registered
    def index
        render json: Government.all
    end

    # All cities for a government
    def show
        render json: @government.cities
    end
    
    private
    def set_government
        @government = Government.find(params[:government_id])
    end
end