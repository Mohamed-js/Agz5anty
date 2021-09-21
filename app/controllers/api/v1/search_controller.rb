class Api::V1::SearchController < Api::V1::VersionOneController
  before_action :authenticated_user?

  def index
    if params[:q] && params[:q] != ''
      @keyword = params['q'].to_s
      @meds = Medication.where("lower(name) ILIKE '%#{@keyword}%'").or(Medication.where("lower(description) ILIKE '%#{@keyword}%'"))
      @cosms = CosmMed.where("lower(name) ILIKE '%#{@keyword}%'").or(CosmMed.where("lower(description) ILIKE '%#{@keyword}%'"))
      @results = @meds + @cosms
    end
    render json: @results
  end
end
