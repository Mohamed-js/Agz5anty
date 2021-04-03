class AppController < ApplicationController
    before_action :authenticate_user!, except: %i[index]

    def index
    end

    def cats
        @categories= Category.all
    end

    def checkout
        @hello = Order.new
    end

    def orders
        # @orders = Cart.where(ordered: "t")
    end

    def new_order
        @carts = Cart.where(user_id: current_user.id)
        city = params[:city]
        center = params[:center]
        address = params[:address]
        phone = params[:phone]
        code = @carts[0].id

        @carts.each do |cart|
            if cart.ordered == "true"
                item = Medication.find(cart.item)
            elsif cart.ordered == "false"
                item = CosmMed.find(cart.item)
            end
            tprice = cart.quantity * item.price
            ord = Order.new(item: item.name, quantity: cart.quantity ,tprice: tprice, user_id: current_user.id, phone: phone, city: city, center: center, address: address, code: code)
            if ord.save 
                cart.delete
            end
        end
        redirect_to carts_path, notice: "Ordered successfully."
    end


end