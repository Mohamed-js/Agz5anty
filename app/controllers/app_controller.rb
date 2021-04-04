class AppController < ApplicationController
    before_action :authenticate_user!

    def index
    end

    def cats
        @categories= Category.all
    end

    def prescription
        @order = Order.new
    end

    def n_prescription
        city = params[:city]
        center = params[:center]
        address = params[:address]
        phone = params[:phone]
        notes = params[:notes]
        usr = params[:user_id]
        img = params[:image]

        ord = Order.new(user_id: usr, phone: phone, city: city, center: center, address: address, notes: notes, image: img)
        if ord.save
            redirect_to root_path, notice: "Ordered successfully."
        end
    end
    
    

    def checkout
        @hello = Order.new
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
            ord = Order.new(item: item.name, quantity: cart.quantity ,tprice: tprice, user_id: current_user.id, phone: phone, city: city, center: center, address: address, code: code, notes: params[:notes])
            if ord.save 
                cart.delete
            end
        end
        redirect_to carts_path, notice: "Ordered successfully."
    end
end