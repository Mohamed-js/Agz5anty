module Api
  module V1
    class MedicationsController < Api::V1::VersionOneController
      before_action :set_medication, only: %i[show]

      # GET medications/1
      def show
        render json: @medication
      end

      private

      # Use callbacks to share common setup or constraints between actions.
      def set_medication
        @medication = Medication.find(params[:id])
      end
    end
  end
end
