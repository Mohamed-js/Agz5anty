class AppController < ApplicationController
  before_action :authenticate_user!

  def index; end

  def cats
    @categories = Category.all
  end

  def prescription
    @order = Order.new
  end

  def n_prescription
    city = params[:city]
    center = params[:center]
    address = params[:address]
    phone = params[:phone]
    phone2 = params[:phone2]
    notes = params[:notes]
    usr = params[:user_id]
    img = params[:image]

    ord = Order.new(user_id: usr, phone: phone, phone2: phone2, city: city, center: center, address: address,
                    notes: notes, image: img)
    redirect_to root_path, notice: 'تم الطلب بنجاح. شكرا لتعاملكم معنا.' if ord.save
  end

  def checkout
    @hello = Order.new
  end

  def new_order
    @cart_items = CartItem.where(user_id: current_user.id)

    @order = Order.create(
      phone: params[:phone],
      phone2: params[:phone2],
      address_id: params[:address_id],
      notes: params[:notes],
      geocode: params[:geocode],
      user_id: current_user.id
    )

    @cart_items.each do |cart_item|
      if cart_item.item_type == 'medications'
        item = Medication.find(cart_item.item_id)
      elsif cart_item.item_type == 'cosmetics'
        item = CosmMed.find(cart_item.item_id)
      end
      ord = @order.order_items.build(item_id: item.id, item_type: cart_item.item_type,
                                     quantity: cart_item.quantity, user_id: current_user.id)

      cart_item.delete if ord.save
    end
    @order.save
    redirect_to cart_items_path, notice: 'تم الطلب بنجاح. شكرا لتعاملكم معنا.'
  end
end
