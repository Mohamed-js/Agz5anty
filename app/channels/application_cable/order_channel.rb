class OrderChannel < ApplicationCable::Channel
    def subscribe
        stream_from 'order_channel'
    end

    def unsubscribe; end
    
    def create(opts)
        Order.create(
            phone: "01100086711",
            address_id: 1,
            notes: opts.fetch('notes'),
            status: "pending",
            geocode: "31.1234-27.23126",
            user_id: 1,
            payment_method: "cod",
            payment_status: "unpaid"
        )
    end
    
    
end