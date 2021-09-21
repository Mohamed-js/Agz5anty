class OrderCreationEventBroadcastJob < ApplicationJob
    queue_as :default

    def perform(order)
        ActionCable.server.broadcast('order_channel',
            id: order.id,
            phone: "01100086711",
            address_id: 1,
            notes: order.notes,
            status: "pending",
            geocode: "31.1234-27.23126",
            user_id: 1,
            payment_method: "cod",
            payment_status: "unpaid",
            created_at: order.created_at.strftime('%H:%M')
        )
    end
end