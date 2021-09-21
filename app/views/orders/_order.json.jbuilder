json.extract! order, :id, :item, :quantity, :tprice, :user_id, :phone, :city, :center, :address, :created_at,
              :updated_at
json.url order_url(order, format: :json)
