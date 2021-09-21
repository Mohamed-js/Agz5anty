class Order < ApplicationRecord
    belongs_to :user
    has_many :order_items

    after_create_commit do
        OrderCreationEventBroadcastJob.perform_later(self)
    end
end
