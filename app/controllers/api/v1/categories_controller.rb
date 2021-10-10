module Api
  module V1
    class CategoriesController < Api::V1::VersionOneController
      before_action :set_category, only: %i[show]
      # GET Categories/
      def index
        if params[:lang] == 'ar'
          render json: Category.all
        else
          render json: Category.all
        end
      end

      # GET Categories/1
      def show
        if params[:lang] == 'ar'
          render json: @category.medications.order('name ASC').offset(params[:offset]).limit(12)
        else
          render json: @category.medications.order('name ASC').offset(params[:offset]).limit(12)
        end
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_category
        @category = Category.find(params[:id])
      end
    end
  end
end
