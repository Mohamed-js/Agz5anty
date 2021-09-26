# frozen_string_literal: true

json.extract! cosm_med, :id, :name, :description, :main, :img, :quantity, :created_at, :updated_at
json.url cosm_med_url(cosm_med, format: :json)
