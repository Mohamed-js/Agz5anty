# frozen_string_literal: true

json.extract! cosm_cat, :id, :name, :image_data, :parent, :created_at, :updated_at
json.url cosm_cat_url(cosm_cat, format: :json)
