class Api::V1::AddressesController < Api::V1::VersionOneController
  before_action :authenticated_user?
  before_action :set_address, only: :destroy

  def index
    render json: @user.addresses
  end

  def create
    @address = @user.addresses.build(latitude: params[:latitude],
                                     longitude: params[:longitude], government: params[:government], city: params[:city], street: params[:street], building_number: params[:building_number], floor: params[:floor], landmark: params[:landmark])
    if @address.save
      render json: { message: 'Saved.' }
    else
      render json: { message: 'Something wrong happened!' }
    end
  end

  def destroy
    if @address.destroy
      render json: { message: 'Deleted.' }
    else
      render json: { message: 'Something wrong happened!' }
    end
  end

  private

  def set_address
    @address = @user.addresses.find(params[:id])
  end
end
