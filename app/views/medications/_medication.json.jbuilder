json.extract! medication, :id, :name, :description, :price, :main, :sub, :ingredients, :shape, :dose, :quantity, :img, :availability, :created_at, :updated_at
json.url medication_url(medication, format: :json)
