class Api::V1::CategoriesController < Api::V1::VersionOneController
    before_action :set_category, only: %i[ show ]
    # GET Categories/
    def index
        render json: Category.all
    end

    # GET Categories/1
    def show
        render json: @category.medications.order('name ASC').offset(params[:offset]).limit(12)
    end

    private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
        @category = Category.find(params[:id])
    end
end