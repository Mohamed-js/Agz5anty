# frozen_string_literal: true

json.array! @medications, partial: 'medications/medication', as: :medication
