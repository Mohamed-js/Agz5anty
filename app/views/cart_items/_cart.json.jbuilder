json.extract! cart, :id, :item, :quantity, :price, :user_id, :created_at, :updated_at
json.url cart_url(cart, format: :json)
