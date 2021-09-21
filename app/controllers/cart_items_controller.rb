class CartItemsController < ApplicationController
  before_action :set_cart, only: %i[show edit update destroy]
  before_action :authenticate_admin!, only: [:new]
  # before_action :authenticate_admin!, except: [:index, :edit, :destroy]

  # GET /carts or /carts.json
  def index
    @carts = CartItem.where(user_id: current_user.id)
    p @carts
  end

  # GET /carts/new
  def new
    @cart = CartItem.new
  end

  # GET /carts/1/edit
  def edit; end

  # POST /carts or /carts.json
  def create
    @cart = current_user.cart_items.build(cart_params)

    @cart.item_type = 'medications' if request.referrer.include? 'medications'
    @cart.item_type = 'cosmetics' if request.referrer.include? 'cosm'

    respond_to do |format|
      if @cart.save
        format.html { redirect_to request.referrer, notice: 'تمت الاضافة لعربة المشتريات.' }
        format.json { render :show, status: :created, location: request.referrer }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /carts/1 or /carts/1.json
  def update
    respond_to do |format|
      if @cart.update(cart_params)
        format.html { redirect_to cart_items_path, notice: 'تم التعديل بنجاح.' }
        format.json { render :show, status: :ok, location: carts_path }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @cart.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /carts/1 or /carts/1.json
  def destroy
    @cart.destroy
    respond_to do |format|
      format.html { redirect_to cart_items_url, notice: 'تمت ازالة المنتج من العربة.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_cart
    @cart = CartItem.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def cart_params
    params.require(:cart_item).permit(:item_id, :quantity, :price)
  end
end
