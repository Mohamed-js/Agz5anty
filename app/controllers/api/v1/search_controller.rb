module Api
  module V1
    class SearchController < Api::V1::VersionOneController
      before_action :authenticated_user?

      def index
        if params[:q] && params[:q] != ''
          @keyword = params['q'].to_s
          @meds = Medication.where("lower(name) ILIKE '%#{@keyword}%'").or(Medication.where("lower(ar_name) ILIKE '%#{@keyword}%'"))
          @cosms = CosmMed.where("lower(name) ILIKE '%#{@keyword}%'").or(CosmMed.where("lower(description) ILIKE '%#{@keyword}%'"))
          @results = @meds + @cosms
        end
        render json: @results.limit(20)
      end
    end
  end
end
