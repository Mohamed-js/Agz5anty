class Api::V1::PharmaciesController < Api::V1::VersionOneController
  def index
    render json: Pharmacy.all
  end

  def create
    @pharmacy = Pharmacy.new(pharmacy_params)
    if @pharmacy.save
      render json: { message: 'Successfully signed up!' }, status: :ok
    else
      render json: @pharmacy.errors.full_messages, status: :unprocessable_entity
    end
  end

  private
  def pharmacy_params
    params.require(:pharmacy).permit(:name, :password, :government, :city, :doctor, :phone, :landline, :latitude,
                                     :longitude, :opens_at, :closes_at)
  end
end
