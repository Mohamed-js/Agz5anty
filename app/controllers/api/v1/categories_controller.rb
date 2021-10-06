module Api
  module V1
    class CategoriesController < Api::V1::VersionOneController
      before_action :set_category, only: %i[show]
      # GET Categories/
      def index
        render json: Category.where.not(id: 16)
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
  end
end
